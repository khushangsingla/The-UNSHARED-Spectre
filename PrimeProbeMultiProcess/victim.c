#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#ifdef _MSC_VER
#include <intrin.h>        /* for rdtscp and clflush */
#pragma optimize("gt",on)
#else
#include <x86intrin.h>     /* for rdtscp and clflush */
#endif
#include <sys/mman.h>		// For mmap of array2 memory
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

unsigned int array1_size = 16;
uint8_t unused1[64];
uint8_t array1[160] = { 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16 };
uint8_t unused2[64]; 
uint8_t array2[256 * 512];

char *secret = "The Magic Words are Squeamish Ossifrage.";

uint8_t temp = 0;  /* Used so compiler won't optimize out victim_function() */

void victim_function(size_t x) {
	_mm_clflush(&array1_size);
	for(volatile int i=0;i<100;i++);
	if (x < array1_size) {
		temp &= array2[array1[x] * 64];
	}
}

int main() {
    for (int i = 0; i < sizeof(array2); i++)
		array2[i] = 1;
	size_t malicious_x=(size_t)(secret-(char*)array1);
	printf("%ld\n",(void*)secret-(void*)array1);
    fprintf(stderr,"The target is: %d\n",((int)(&array2[array1[malicious_x+1]*64])>>6)&0b111111);
	size_t x;
	while(1){
		read(0,&x,8);
		victim_function(x);
	}
}

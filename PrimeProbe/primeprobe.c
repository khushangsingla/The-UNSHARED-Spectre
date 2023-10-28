#include <stdio.h>
#include <sys/auxv.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <assert.h>

#define VICTIM_ARRAY_SIZE 4096
#define ATTACKER_ARRAY_SIZE 1024
#define PRIMING_ITERS 100
int cache_size,number_of_sets,number_of_ways,line_size;
int temp;
char* attacker_array;
char* victim_array;

void prime_cache_set(int n){
	for(int i=0; i<PRIMING_ITERS; ++i){
		temp += attacker_array[4096*(( 192 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
		temp += attacker_array[4096*(( 237 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
		temp += attacker_array[4096*(( 738 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
		temp += attacker_array[4096*(( 963 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
		temp += attacker_array[4096*(( 868 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
		temp += attacker_array[4096*(( 792 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
		temp += attacker_array[4096*(( 479 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
		temp += attacker_array[4096*(( 592 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
	}
}

unsigned long long rdtsc() {
	unsigned long long a, d;
	asm volatile ("mfence");
	asm volatile ("rdtsc" : "=a" (a), "=d" (d));
	a = (d<<32) | a;
	asm volatile ("mfence");
	return a;
}

void probe(int n) {
	unsigned long long timer[8];
	timer[0] = rdtsc();
	temp += attacker_array[4096*(( 192 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
	timer[0] = rdtsc() - timer[0];
	timer[1] = rdtsc();
	temp += attacker_array[4096*(( 237 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
	timer[1] = rdtsc() - timer[1];
	timer[2] = rdtsc();
	temp += attacker_array[4096*(( 738 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
	timer[2] = rdtsc() - timer[2];
	timer[3] = rdtsc();
	temp += attacker_array[4096*(( 963 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
	timer[3] = rdtsc() - timer[3];
	timer[4] = rdtsc();
	temp += attacker_array[4096*(( 868 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
	timer[4] = rdtsc() - timer[4];
	timer[5] = rdtsc();
	temp += attacker_array[4096*(( 792 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
	timer[5] = rdtsc() - timer[5];
	timer[6] = rdtsc();
	temp += attacker_array[4096*(( 479 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
	timer[6] = rdtsc() - timer[6];
	timer[7] = rdtsc();
	temp += attacker_array[4096*(( 592 + (n>>6))%ATTACKER_ARRAY_SIZE) + n];
	timer[7] = rdtsc() - timer[7];

	for(int i=0; i<8; ++i){
		printf("Set %d: %llu\n", i, timer[i]);
	}
}

extern void probe_asm(char* attacker_array, long long * times,int n);


int main(){
	int fd = open("/sys/devices/system/cpu/cpu0/cache/index0/size", O_RDONLY);	
	char buf[10];
	int i = -1;
	do{
		i++;
		read(fd, buf+i, 1);
	}
	while(buf[i] != 'K');
	buf[i] = '\0';
	cache_size = atoi(buf)*1024;
	printf("Cache size: %d\n", cache_size);

	
	fd = open("/sys/devices/system/cpu/cpu0/cache/index0/number_of_sets", O_RDONLY);	
	i = -1;
	do{
		i++;
		read(fd, buf+i, 1);
	}
	while(buf[i] != '\0');
	buf[i] = '\0';
	number_of_sets = atoi(buf);
	printf("Number of sets: %d\n", number_of_sets);


	fd = open("/sys/devices/system/cpu/cpu0/cache/index0/ways_of_associativity", O_RDONLY);	
	i = -1;
	do{
		i++;
		read(fd, buf+i, 1);
	}
	while(buf[i] != '\0');
	buf[i] = '\0';
	number_of_ways = atoi(buf);
	printf("Number of ways: %d\n", number_of_ways);


	fd = open("/sys/devices/system/cpu/cpu0/cache/index0/coherency_line_size", O_RDONLY);	
	i = -1;
	do{
		i++;
		read(fd, buf+i, 1);
	}
	while(buf[i] != '\0');
	buf[i] = '\0';
	line_size = atoi(buf);
	printf("Line size: %d\n", line_size);

	assert(number_of_ways*number_of_sets*line_size == cache_size);
	
	attacker_array = (char*)malloc(ATTACKER_ARRAY_SIZE*4096*sizeof(int));
	victim_array = (char*)malloc(VICTIM_ARRAY_SIZE*sizeof(int));
		
	printf("Attacker array: %p %lu\n", attacker_array, ((unsigned long)attacker_array)%4096 );
	printf("Victim array: %p %lu\n", victim_array, ((unsigned long)victim_array)%4096 );

	attacker_array = (char*)((unsigned long)attacker_array + 4096 - ((unsigned long)attacker_array)%4096);
	victim_array = (char*)((unsigned long)victim_array + 4096 - ((unsigned long)victim_array)%4096);

	printf("Attacker array: %p %lu\n", attacker_array, ((unsigned long)attacker_array)%4096 );
	printf("Victim array: %p %lu\n", victim_array, ((unsigned long)victim_array)%4096 );

	int n = 0xabc;
	prime_cache_set(n);
	temp = victim_array[(((n>>6)+1)<<6)];
	long long times[8];
	probe_asm(attacker_array, times, n);
	for(int i=0;i<8;i++){
		printf("%lld ",-1*times[i]);
	}
	printf("\n");
}

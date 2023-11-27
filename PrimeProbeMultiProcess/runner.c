#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main(){
	int fd[2];
	pipe(fd);

	if(fork() == 0){
		dup2(fd[1], 3);
		execlp("taskset","taskset", "1", "./attacker",(char*)NULL);
	}
	
	dup2(fd[0], 0);
	execlp("taskset","taskset", "1", "./victim",(char*)NULL);
}

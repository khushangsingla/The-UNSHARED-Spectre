PROGRAM = attacker victim runner

all: $(PROGRAM)
	timeout 1 cat /dev/random | hexdump | tr -d " " | tr -d "\n" | head -c 2131072 > shared_file.txt

attacker: attacker.c
	gcc -o attacker attacker.c
victim: victim.c
	gcc -o victim victim.c
runner: runner.c
	gcc -o runner runner.c


clean: ; rm -f $(PROGRAM) shared_file.txt

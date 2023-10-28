.intel_syntax noprefix

.globl probe_asm

.type probe_asm, @function

probe_asm:
	# INPUT 
	# rdi = array addr
	# rsi = array to store times
	# rdx = n (probe address lower bits)

	push rax
	push rbx
	push rcx
	push rdx
	push rsi
	push rdi
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15

	mov rbx,rdx
	
	# 1st access to prime arrau
	mov rcx, rbx
	shr rcx, 6
	add rcx, 192
	and rcx, 1024
	shl rcx, 12
	add rcx, rbx
	
	mfence
	rdtsc
	mov r15, rax
	mov rax, [rdi+rcx]
	mfence
	rdtsc
	sub r15, rax


	# 2st access to prime arrau
	mov rcx, rbx
	shr rcx, 6
	add rcx, 237
	and rcx, 1024
	shl rcx, 12
	add rcx, rbx
	
	mfence
	rdtsc
	mov r8, rax
	mov rax, [rdi+rcx]
	mfence
	rdtsc
	sub r8, rax


	# 1st access to prime arrau
	mov rcx, rbx
	shr rcx, 6
	add rcx, 738
	and rcx, 1024
	shl rcx, 12
	add rcx, rbx
	
	mfence
	rdtsc
	mov r9, rax
	mov rax, [rdi+rcx]
	mfence
	rdtsc
	sub r9, rax


	# 1st access to prime arrau
	mov rcx, rbx
	shr rcx, 6
	add rcx, 963
	and rcx, 1024
	shl rcx, 12
	add rcx, rbx
	
	mfence
	rdtsc
	mov r10, rax
	mov rax, [rdi+rcx]
	mfence
	rdtsc
	sub r10, rax


	# 1st access to prime arrau
	mov rcx, rbx
	shr rcx, 6
	add rcx, 868
	and rcx, 1024
	shl rcx, 12
	add rcx, rbx
	
	mfence
	rdtsc
	mov r11, rax
	mov rax, [rdi+rcx]
	mfence
	rdtsc
	sub r11, rax


	# 1st access to prime arrau
	mov rcx, rbx
	shr rcx, 6
	add rcx, 792
	and rcx, 1024
	shl rcx, 12
	add rcx, rbx
	
	mfence
	rdtsc
	mov r12, rax
	mov rax, [rdi+rcx]
	mfence
	rdtsc
	sub r12, rax


	# 1st access to prime arrau
	mov rcx, rbx
	shr rcx, 6
	add rcx, 479
	and rcx, 1024
	shl rcx, 12
	add rcx, rbx
	
	mfence
	rdtsc
	mov r13, rax
	mov rax, [rdi+rcx]
	mfence
	rdtsc
	sub r13, rax


	# 1st access to prime arrau
	mov rcx, rbx
	shr rcx, 6
	add rcx, 592
	and rcx, 1024
	shl rcx, 12
	add rcx, rbx
	
	mfence
	rdtsc
	mov r14, rax
	mov rax, [rdi+rcx]
	mfence
	rdtsc
	sub r14, rax

	
	mov [rsi], r15
	mov [rsi+8], r8
	mov [rsi+16], r9
	mov [rsi+24], r10
	mov [rsi+32], r11
	mov [rsi+40], r12
	mov [rsi+48], r13
	mov [rsi+56], r14

	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop rdi
	pop rsi
	pop rdx
	pop rcx
	pop rbx
	pop rax

	ret

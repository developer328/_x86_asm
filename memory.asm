;28-oct-2023 17:00PM - start
;print rsp value

	global _start
	
	_start:	

section .text

	push rbp
	mov rbp, rsp
	sub rsp, 0x14
	mov DWORD [rbp-4], 0

	main:
	jmp .L1	
	
	.L2:
	mov rax, 1
	mov rdi, 1
	mov rsi, str0
	mov rdx, 2
	syscall	
	add DWORD [rbp-4], 0x1

	.L1:
	cmp DWORD [rbp-4], 5
	jl .L2

	mov rax, 0x3c
	syscall
	;int 80h

section .data
	str0 db "1",0xa
	str1 db "2",0xa

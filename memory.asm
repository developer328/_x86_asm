;28-oct-2023 17:00PM - start
;print rsp value

	global _start
	
	_start:	

section .text

	; now it is if_else 
	;problem - how to print numbers?!
	
	push rbp	; hold old rsp location
	mov rbp, rsp	; save new rsp addres on ..^
	sub rsp, 0x14	; 14 word for stack memory	
	mov DWORD [rbp-8], 4	; store dec 5 on rbp-4 addr
	mov DWORD [rbp-14], 5
	
	mov eax, DWORD [rbp-8]
	cmp eax, DWORD [rbp-14]
	jle .L2	
	mov rax, 1	
	mov rdi, 1
	mov rsi, str0
	mov rdx, 2
	syscall
	int 80h
	jmp .L3
	.L2:
	mov rax, 1	
	mov rdi, 1
	mov rsi, str1
	mov rdx, 2
	syscall
	int 80h	

	.L3:
	;exit
	mov rax, 60
	syscall
	int 80h

section .data
	str0 db "1",0xa
	str1 db "2",0xa

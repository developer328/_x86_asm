;28-oct-2023 17:00PM - start
;print rsp value


; ......
; :    :
; :    :
; :....:

	global _start
	
	_start:	

section .text
	
	;this code purpose is only print "9+A \n", yet;
	;print 5 for test;
	;problem - how to print numbers?!
	
	push rbp
	mov rbp, rsp
	sub rsp, 0x14
	mov DWORD [rbp-4], 5
	mov rax, 1	
	mov rdi, 1
	mov rsi, abc 
	mov rdx, 30 
	syscall
	int 80h	

	;exit
	mov rax, 60
	syscall
	int 80h

section .data

	abc db "abcdefghijklmnopqrstuvwxyz", 0xa
	;num db 0x2E, 0x2E, 0x2E, 0x2E, 0x2E, 0x2E, 0xa, 0x3A, 0x20, 0x20, 0x20, 0x20, 0x3A, 0xa, 0x3A, 0x20, 0x20, 0x20, 0x20, 0x3A, 0xa, 0x3A, 0x2E, 0x2E, 0x2E, 0x2E, 0x3A, 0xa

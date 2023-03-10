section .data
	msg: db "Hello world!", 10 ; string plus new line
	msgLen: equ $-msg	   ; length of string

section .text

	global _start

	_start:

		mov	rax, 1     ; sys_write
		mov	rdi, 1	   ; stdout
		mov	rsi, msg   ; target string to print
		mov	rdx, msgLen; size of string
		syscall		   ; call kernel

		; exit gracefully
		mov	rax, 60	   ; sys_exit
		mov	rdi, 0	   ; return 0 (success)
		syscall

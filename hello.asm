	section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, hello
	mov rdx, hello_len
	syscall

	mov rax, 60
	xor rdi, rdi
	syscall

	section .rodata
	hello db "Hello World!",0x0A
	hello_len equ $ - hello

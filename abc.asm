
section .text
	global _start

_start:
	mov eax, 10
	add eax, 20
	mov eax, 1
	int 0x80


	section .text
	global _start
_start:
	mov rax, 6
	mov rbx, 48
	mov rcx, -1
	cmp rax, 0
	jl end
	cmp rax, 9
	jg end
	add rax, rbx
	mov rcx, rax
end:
	mov eax, 1
	int 0x80

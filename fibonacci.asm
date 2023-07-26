	section .text
	global _start
_start:
	mov rax, 0	; starting value a = 0
	mov rbx, 1	; starting value b = 1
	mov rcx, 3	; counter i = 3
	mov rdx, 2	; nth element where n = 6
	mov r8, 0	; sum = 0
if:
	cmp rdx, 1
	jnz else_if
	mov r8, 0
	jmp end_if
else_if:
	cmp rdx, 2
	jnz else
	mov r8, 1
	jmp end_if
else:
while:
	cmp rcx, rdx
	jg end_while
	add rax, rbx
	mov r8, rax
	mov rax, rbx
	mov rbx, r8
	add rcx, 1
	jmp while
end_while:
end_if:
	mov eax, 1
	int 0x80
		

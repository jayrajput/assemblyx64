section .data

	TestValue db 17h
	
section .text
	global	_start
_start:
	nop
; Put your experiments between the two nops...

	mov rax,42h
	add rax,[TestValue]

; Put your experiments between the two nops...
	nop

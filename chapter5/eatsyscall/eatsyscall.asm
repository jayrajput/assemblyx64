;  Executable name : EATSYSCALL
;  Version         : 1.0
;  Created date    : 1/7/2009
;  Last update     : 2/18/2009
;  Author          : Jeff Duntemann
;  Description     : A simple program in assembly for Linux, using NASM 2.05,
;    demonstrating the use of Linux INT 80H syscalls to display text.
;
;  Build using these commands:
;    nasm -f elf -g -F stabs eatsyscall.asm
;    ld -o eatsyscall eatsyscall.o
;

SECTION .data			; Section containing initialised data
	
	EatMsg db "hello, world!"
	
SECTION .text			; Section containing code

global 	_start			; Linker needs this to find the entry point!
	
_start:
	nop			; This no-op keeps gdb happy...
	mov rax,1		; Specify sys_write call
	mov rdi,1		; Specify File Descriptor 1: Standard Output
	mov rsi,EatMsg		; Pass offset of the message
	mov rdx,13		; Pass the length of the message
    syscall
    ;int 80H

	mov rax,60		; Code for Exit Syscall
	mov rdi,60		; Return a code of zero	
    syscall
	;int 80H			; Make kernel call





























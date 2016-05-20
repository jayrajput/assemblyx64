; See http://0xax.blogspot.com/2014/08/say-hello-to-x64-assembly-part-1.html
SECTION .data      ; Section containing initialised data

    EatMsg db "Eat at Joe's!"

SECTION .text      ; Section containing code

global     _start  ; Linker needs this to find the entry point!

_start:
    nop            ; This no-op keeps gdb happy...
    mov rax,1      ; Specify sys_write call
    mov rdi,1      ; Specify File Descriptor 1: Standard Output
    mov rsi,EatMsg ; Pass offset of the message
    mov rdx,13     ; Pass the length of the message
    syscall
    ;int 80H       ; This does not work on x86_64

    mov rax,60        ; Code for Exit Syscall
    mov rdi,60        ; Return a code of zero    
    syscall
    ;int 80H        ; This does not work on x86_64

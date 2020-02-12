; nasm -f elf32 ex7.asm -o ex7.o
; gcc -m32 ex7.o -o ex7.out
; ./ex7.out
; echo $?

global main

section .text
main:
    mov ebp, esp; for correct debugging
    
    call func
    mov eax, 1
    int 0x80

func:
    mov ebx, 42
    ret
    
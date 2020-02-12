; nasm -f elf32 ex1.asm -o ex1.o
; gcc -m32 ex1.o -o ex1.out
; ./ex1.out
; echo $?

global main

section .text
main:
    mov ebp, esp; for correct debugging
    
    mov eax, 1 ; exit call 
    mov ebx, 42; exit status
    int 0x80   ; system call
    
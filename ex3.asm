; nasm -f elf32 ex3.asm -o ex3.o
; gcc -m32 ex3.o -o ex3.out
; ./ex3.out
; echo $?

global main

section .text
main:
    mov ebp, esp; for correct debugging
    
    mov ecx, 101
    mov eax, 1
    mov ebx, 42
    cmp ecx, 100
    jl skip
    mov ebx, 13

skip:
    int 0x80
    
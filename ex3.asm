; nasm -f elf32 ex3.asm -o ex3.o
; gcc -m32 ex3.o -o ex3.out
; ./ex3.out
; echo $?

global main

section .text
main:
    mov ebp, esp; for correct debugging
    
    mov eax, 1  ; exit call
    mov ebx, 42 ; exit status
    
    mov ecx, 101; 101
    cmp ecx, 100; comapare ecx = 101 to 100
    jl skip     ; jump to skip if less (ecx = 101 not less than 100)
    
    mov ebx, 13 ; exit status

skip:
    int 0x80    ; system call
    
; nasm -f elf32 ex2.asm -o ex2.o
; gcc -m32 ex2.o -o ex2.out
; ./ex2.out
; echo $?

global main

section .data
    msg db "Hello, word!", 0x0a; "Hello, word!\n"
    len equ $ - msg            ; 13

section .text
main:
    mov ebp, esp; for correct debugging
    
    mov eax, 4  ; write call
    mov ebx, 1  ; stdout
    mov ecx, msg; ['H']
    mov edx, len; 13 bytes
    int 0x80    ; system call
    
    mov eax, 1  ; exit call
    mov ebx, 0  ; exit status
    int 0x80    ; system call
    
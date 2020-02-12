; nasm -f elf32 ex6.asm -o ex6.o
; gcc -m32 ex6.o -o ex6.out
; ./ex6.out
; echo $?

global main

section .text
main:
    mov ebp, esp; for correct debugging
    
    sub esp, 4           ; esp (stack pointer) -= 4
    mov [esp], byte 'H'  ; 'H'
    mov [esp+1], byte 'e'; "He"
    mov [esp+2], byte 'y'; "Hey"
    mov [esp+3], byte '!'; "Hey!"
    mov eax, 4           ; wite call
    mov ebx, 1           ; stdout
    mov ecx, esp         ; ['H']
    mov edx, 4           ; 4 bytes
    int 0x80             ; system call
    
    mov eax, 1           ; exit call
    mov ebx, 0           ; exit status
    int 0x80             ; system call
    
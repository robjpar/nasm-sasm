; nasm -f elf32 ex5.asm -o ex5.o
; gcc -m32 ex5.o -o ex5.out
; ./ex5.out
; echo $?

global main

section .data
    addr db "yellow" ; "yellow"

section .text
main:
    mov ebp, esp; for correct debugging
    
    mov [addr], byte 'H'  ; 'y' -> 'H'
    mov [addr+5], byte '!'; 'w' -> '!'
    mov eax, 4            ; write call
    mov ebx, 1            ; stdout
    mov ecx, addr         ; ['H']
    mov edx, 6            ; 6 bytes
    int 0x80              ; system call
    
    mov eax, 1            ; exit call
    mov ebx, 0            ; exit status
    int 0x80              ; system call
    
; nasm -f elf32 ex5.asm -o ex5.o
; gcc -m32 ex5.o -o ex5.out
; ./ex5.out
; echo $?

global main

section .data
    addr db "yellow"

section .text
main:
    mov ebp, esp; for correct debugging
    
    mov [addr], byte 'H'
    mov [addr+5], byte '!'
    mov eax, 4
    mov ebx, 1
    mov ecx, addr
    mov edx, 6
    int 0x80
    
    mov eax, 1
    mov ebx, 0
    int 0x80
    
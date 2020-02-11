global main

section .data
    msg db "Hello, word!", 0x0a
    len equ $ - msg

section .text
main:
    mov ebp, esp; for correct debugging
    
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80
    
    mov eax, 1
    mov ebx, 0
    int 0x80
    
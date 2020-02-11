global main

section .text
main:
    mov ebp, esp; for correct debugging
    
    mov eax, 1
    mov ebx, 42
    int 0x80
    
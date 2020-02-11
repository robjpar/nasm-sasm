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
    
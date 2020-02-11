global main

section .text
main:
    mov ebp, esp; for correct debugging
    
    mov ebx, 1
    mov ecx, 4

label:
    add ebx, ebx
    dec ecx
    cmp ecx, 0
    jg label
    
    mov eax, 1
    int 0x80
    
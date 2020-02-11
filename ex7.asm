global main

section .text
main:
    mov ebp, esp; for correct debugging
    
    call func
    mov eax, 1
    int 0x80

func:
    mov ebx, 42
    ret
    
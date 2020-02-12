; nasm -f elf32 ex9.asm -o ex9.o
; gcc -m32 ex9.o -o ex9.out
; ./ex9.out
; echo $?

global main

section .text
main:
    mov ebp, esp; for correct debugging
    
    push 21
    call times2
    mov ebx, eax
    mov eax, 1
    int 0x80

times2:
    push ebp
    mov ebp, esp
    
    mov eax, [ebp+8]
    add eax, eax
    
    mov esp, ebp
    pop ebp
    ret
    
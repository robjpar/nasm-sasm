; nasm -f elf32 ex4.asm -o ex4.o
; gcc -m32 ex4.o -o ex4.out
; ./ex4.out
; echo $?

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
    
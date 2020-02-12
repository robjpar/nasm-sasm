; nasm -f elf32 ex8.asm -o ex8.o
; gcc -m32 ex8.o -o ex8.out
; ./ex8.out
; echo $?

global main

section .text
main:
    mov ebp, esp; for correct debugging
    
    call func
    mov eax, 1
    mov ebx, 0
    int 0x80

func:
    push ebp
    mov ebp, esp
    
    sub esp, 2
    mov [esp], byte 'H'
    mov [esp+1], byte 'i'
    
    mov eax, 4
    mov ebx, 1
    mov ecx, esp
    mov edx, 2
    int 0x80
    
    mov esp, ebp
    pop ebp
    ret
    
; nasm -f elf32 ex10.asm -o ex10.o
; gcc -m32 ex10.o -o ex10.out
; ./ex10.out
; echo $?

global main
extern printf

section .data
    msg db "Testing %i %i...", 0x0a, 0x00 ; "Testing %i %i...\n\0"

section .text
main:
    mov ebp, esp; for correct debugging
    
    push ebp
    mov ebp, esp
    
    push 123
    push 456
    push msg    ; "Testing %i %i...\n\0"
    call printf ; "Testing 456 123...\n"
    
    mov eax, 0
    
    mov esp, ebp
    pop ebp
    ret
    
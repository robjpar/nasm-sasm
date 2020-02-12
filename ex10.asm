; nasm -f elf32 ex10.asm -o ex10.o
; gcc -m32 ex10.o -o ex10.out
; ./ex10.out
; echo $?

global main
extern printf; a function from libc

section .data
    msg db "Testing %i %c...", 0x0a, 0x00 ; "Testing %i %c...\n\0"

section .text
main:
    mov ebp, esp; for correct debugging
    
    push ebp    ; save ebp on the stack
    mov ebp, esp; save esp (stack pointer) in ebp
    
    push 'A'    ; save 'A' on the stack
    push 456    ; save 456 on the stack
    push msg    ; ['T']
    call printf ; printf("Testing %i %c...\n", 456, 'A');
    
    mov ebx, 0  ; exit status
    
    mov esp, ebp; restore esp (stack pointer) from ebp
    pop ebp     ; restore ebp from the stack
    ret         ; return to the system
    
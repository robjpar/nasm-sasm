; nasm -f elf32 ex7.asm -o ex7.o
; gcc -m32 ex7.o -o ex7.out
; ./ex7.out
; echo $?

global main

section .text
main:
    mov ebp, esp; for correct debugging
    
    call func  ; jump to func
    
    mov eax, 1 ; exit call
    int 0x80   ; system call

func:
    mov ebx, 42; exit status
    ret        ; return to the next line after the call
    
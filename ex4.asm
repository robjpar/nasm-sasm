; nasm -f elf32 ex4.asm -o ex4.o
; gcc -m32 ex4.o -o ex4.out
; ./ex4.out
; echo $?

global main

section .text
main:
    mov ebp, esp; for correct debugging
    
    mov ebx, 1  ; exit status
    mov ecx, 4  ; 4 - loop index

label:          ; loop
    add ebx, ebx; ebx += ebx
    dec ecx     ; ecx--
    cmp ecx, 0  ; compare ecx to 0
    jg label    ; jump to label if greater
    
    mov eax, 1  ; exit call
    int 0x80    ; system call
    
; nasm -f elf32 ex9.asm -o ex9.o
; gcc -m32 ex9.o -o ex9.out
; ./ex9.out
; echo $?

global main

section .text
main:
    mov ebp, esp; for correct debugging
    
    push 21         ; save 21 on the stack (int = 4 bytes = 32 bits)
    call times2     ; jump to times2
    
    mov ebx, eax    ; ebx (exit status) = eax = 42
    mov eax, 1      ; exit call
    int 0x80        ; system call

times2:
    push ebp        ; save ebp on the stack (int = 4 bytes = 32 bits)
    mov ebp, esp    ; save esp (stack pointer) in ebp
    
    mov eax, [ebp+8]; eax = 21 (int = 4 bytes = 32 bits)
    add eax, eax    ; eax += eax == 21 += 21 == 42
    
    mov esp, ebp    ; restore esp (stack pointer) from ebp
    pop ebp         ; restore ebp from the stack
    ret             ; return to the next line after the call
    
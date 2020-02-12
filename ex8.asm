; nasm -f elf32 ex8.asm -o ex8.o
; gcc -m32 ex8.o -o ex8.out
; ./ex8.out
; echo $?

global main

section .text
main:
    mov ebp, esp; for correct debugging
    
    call func            ; jump to func
    
    mov eax, 1           ; exit call
    mov ebx, 0           ; exit status
    int 0x80             ; system call

func:
    push ebp             ; save ebp on the stack
    mov ebp, esp         ; save esp (stack pointer) in ebp
    
    sub esp, 2           ; esp (stack pointer) -= 2
    mov [esp], byte 'H'  ; 'H'
    mov [esp+1], byte 'i'; "Hi"
    
    mov eax, 4           ; write call
    mov ebx, 1           ; stdout
    mov ecx, esp         ; ['H']
    mov edx, 2           ; 2 bytes
    int 0x80             ; system call
    
    mov esp, ebp         ; restore esp (stack pointer) from ebp
    pop ebp              ; restore ebp from the stack
    ret                  ; return to the next line after the call
    
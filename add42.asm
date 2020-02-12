; nasm -f elf32 add42.asm -o add42.o

global add42

section .text
; (x + 42) * a
add42:
    push ebp    ; save ebp on the stack (int = 4 bytes = 32 bits)
    mov ebp, esp; save esp (stack pointer) in ebp
    
    mov eax, [ebp+8]  ; eax = x (int = 4 bytes = 32 bits)
    add eax, 42       ; eax += 42 == x += 42
    
    mov ecx, [ebp+12] ; ecx = a (int = 4 bytes = 32 bits)
    mul ecx           ; eax *= ecx == (x + 42) *= a == (x + 42) * a
    
    mov esp, ebp; restore esp (stack pointer) from ebp
    pop ebp     ; restore ebp from the stack
    ret         ; return to the system
    
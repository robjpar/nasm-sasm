; nasm -f elf32 add42.asm -o add42.o

global add42

section .text
; (x + 42) * a
add42:
    push ebp
    mov ebp, esp
    
    mov eax, [ebp+8]  ; eax = x
    add eax, 42       ; eax = eax + 42 = x + 42
    
    mov ecx, [ebp+12] ; ecx = a
    mul ecx           ; eax = eax * ecx = (x + 42) * a
    
    mov esp, ebp
    pop ebp
    ret
    
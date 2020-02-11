/*
    gcc -c -m32 main.c -o main.o
    gcc -m32 main.o add42.o -o main
    ./main
    
    OR
    
    gcc -m32 add42.o main.c -o main
    ./main
*/

#include <stdio.h>
#include "add42.h"

int main() {
    int result;
    
    // (30 + 42) * 2 = 144
    result = add42(30, 2);
    printf("Result: %i\n", result);
    
    return 0;
}

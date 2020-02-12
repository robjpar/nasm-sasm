/*
    gcc -c -m32 main.c -o main.o
    gcc -m32 main.o add42.o -o main.out
    ./main.out
    echo $?
    
    OR
    
    gcc -m32 add42.o main.c -o main.out
    ./main.out
    echo $?
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

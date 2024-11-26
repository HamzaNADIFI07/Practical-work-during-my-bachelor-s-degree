#include <stdio.h>

int nbCarac(){
    int c;
    int count = 0;
    while ((c = getchar()) != EOF) {
        count++;
    }
    return count;
}
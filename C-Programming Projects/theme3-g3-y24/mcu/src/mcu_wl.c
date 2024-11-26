#include <stdio.h>

int nbRetourLigne(){
    int c;
    int count = 0;
    while ((c = getchar()) != EOF) {
        if (c == '\n') {
            count++;
        }
    }
    return count;
}
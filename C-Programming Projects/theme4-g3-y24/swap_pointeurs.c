#include <stdio.h>
#include <stdlib.h>
void swap_ptr(int **nb1,int **nb2){
    int *a=*nb1;
    *nb1=*nb2;
    *nb2=a;
}

int main() {
        
    int a, b;
    int *p = &a;
    int *q = &b;
        
    swap_ptr(&p, &q);
        
    if ((p == &b) && (q == &a)) {
        printf("OK ;)\n");
        exit(EXIT_SUCCESS);
    } else {
        printf("KO ;(\n");
        exit(EXIT_FAILURE);
    }
}
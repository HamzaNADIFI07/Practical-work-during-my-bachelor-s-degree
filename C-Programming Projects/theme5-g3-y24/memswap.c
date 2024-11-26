#include <stdio.h>
#include <string.h>
#include "mmemcpy.h"



void memswap(void *to, void *from, unsigned int size){
    char var[size];
    mmemcpy(var,from,size);
    mmemcpy(from,to,size);
    mmemcpy(to,var,size);
}


void test_memswap(){

    int x = 1000;
    int y = 200;

    printf("Before: x = %d, y = %d \n",x,y);

    memswap(&x,&y,sizeof(int));

    printf("After: x = %d, y = %d \n",x,y);
}



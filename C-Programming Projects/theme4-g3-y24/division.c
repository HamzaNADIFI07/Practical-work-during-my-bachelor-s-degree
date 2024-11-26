#include<stdio.h>

int quotient;
int reste;

void division(int a, int b, int *quotient, int *reste){
    *quotient=a/b;
    *reste=a%b;
}
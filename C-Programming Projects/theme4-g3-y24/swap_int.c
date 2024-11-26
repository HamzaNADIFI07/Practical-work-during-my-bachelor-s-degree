#include<stdio.h>
void swap_int(int *nb1,int *nb2){
    int a=*nb1;
    *nb1=*nb2;
    *nb2=a;
}
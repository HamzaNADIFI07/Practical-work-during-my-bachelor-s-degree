#include <stdio.h>
#include <stdlib.h>

#define Taille 10

int filter_int(int *src, int *dest, unsigned int size, int (*f)(int)){
    int i,cpt=0;
    for(i=0; i<size; i++){
        if ( (*f)(src[i]) != 0 ) {
            *(dest+cpt)=*(src+i);
            cpt++;
        }
    }
    return cpt;
}

int est_pair(int n){
    return (n%2==0) ;
}

int main(){
    int src[Taille]={1,2,4,5,7,8,9,10,15,22};
    int dest[Taille];
    int result=filter_int(src,dest,Taille,&est_pair);
    int i;
    printf("Les entiers paires sont: ");
    for(i=0;i<result;i++){
        printf("%d ",dest[i]);
    }
    printf("\n");
    return 0;
}
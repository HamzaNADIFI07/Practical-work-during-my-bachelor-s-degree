#include <stdio.h>
#include "compteur.h"


int main(int argc, char *argv[]){
    
    for(int i = 0;i<10;i++){
        printf("%d\n",compteur() );
    }
    return 0;

}
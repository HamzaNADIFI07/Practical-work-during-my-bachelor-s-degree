#include <stdio.h>
#include "mcu_macros.h"


void rev(char tab[]){
    char copie[MAXLINE];
    int i;
    for(i=0;tab[i]!='\0';i++){
        copie[i]= tab[i]; 
    }
    int longueur=i;
    for (i=0;i<longueur;i++){
        tab[i] = copie[longueur-1-i];
    }
}
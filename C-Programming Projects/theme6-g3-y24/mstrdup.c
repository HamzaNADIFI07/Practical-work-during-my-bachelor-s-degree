#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "mstrdup.h"

char *mstrdup(const char *str){
    if (str == NULL) {
        return NULL;
    }
    char *cpy = malloc(sizeof(char)*(strlen(str)+1));    //Création d'un emplacement mémoire 
    if (cpy == NULL) {
        return NULL; // Gestion de l'échec de l'allocation
    }
    for(int i = 0;i<strlen(str);i++){
        cpy[i] = str[i];
    }
    cpy[strlen(str)] = '\0';
    return cpy;
}

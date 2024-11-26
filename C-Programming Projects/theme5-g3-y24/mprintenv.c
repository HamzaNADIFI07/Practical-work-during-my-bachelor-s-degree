# include <stdio.h>
# include "variables_environnement.h"
# include <string.h>

void affiche_variable_environnement(void){
    extern char **environ;
    for (int i = 0; i < nvar(); i++){
        printf("%s\n",environ[i]);
    }    
}

void affiche_variable_environnement_param(char *tab[], int size){
    extern char **environ;
    for (int i = 0; i < size; i++){
        for (int j= 0; j< nvar(); j++){
            if(strcmp(environ[j],tab[i])==0){
                printf("%s\n", environ[j]);
            }
        }    
    }   
}

int main (int argc, char *argv[]){
    affiche_variable_environnement_param(argv, argc);
    return 0;
}
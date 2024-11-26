#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "mstrdup.h"

int main(int argc, char *argv[]){
    char orj[100]="Bonjour, ";
    for (int i = 1; i < argc; i++){
        strcat(orj, argv[i]);
        strcat(orj, " ");
    }
    strcat(orj, "!");

    char *cpy = mstrdup(orj);

    if (cpy == NULL) {
        fprintf(stderr, "Erreur lors de l'allocation mémoire\n");
        return 1;
    }

    printf("Chaîne originale : %s\n", orj);
    printf("Copie de la chaîne : %s\n", cpy);

    free(cpy);  // Libèration de la mémoire allouée
    return 0;
}

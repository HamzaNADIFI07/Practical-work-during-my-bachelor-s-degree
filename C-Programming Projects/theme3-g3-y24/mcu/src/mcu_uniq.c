#include <stdio.h>

void copier(char cible[], char source[]) {
    int i = 0;
    while (source[i] != '\0') {
        cible[i] = source[i];
        i++;
    }
    cible[i] = '\0';
}

int comparer(char chaine1[], char chaine2[]) {
    int i = 0;
    while (chaine1[i] != '\0' && chaine2[i] != '\0') {
        if (chaine1[i] != chaine2[i]) {
            return 1;
        }
        i++;
    }
    return 0;
}


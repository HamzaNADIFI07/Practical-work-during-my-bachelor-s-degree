/* ------------------------------
   output.c
   Écriture de données
   ------------------------------------------------------------
*/

#include <stdio.h>

#include "commun.h"

extern int putchar(int c);
extern int getchar(void);

int main(void) {
    struct etudiant_s monEtudiant;
    monEtudiant.numero = 12345;
    monEtudiant.moyenne = 12.58;
 
    union bloc_u bu;
    bu.etu=monEtudiant;
    for (int i = 0; i < sizeof(monEtudiant); i++) {
        putchar(bu.data[i]);
    }
    return 0;
}

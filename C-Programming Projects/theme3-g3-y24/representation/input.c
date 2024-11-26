/* ------------------------------
   input.c
   Lecture de données
   ------------------------------------------------------------
*/

#include <stdio.h>
#include <stdlib.h>
#include "commun.h"

int main(void) {
  struct etudiant_s monEtudiant;
  union bloc_u monBloc;
  int i = 0;
  for(i; i<sizeof(struct etudiant_s);i++){
  	monBloc.data[i]=getchar();
  }
  monEtudiant = monBloc.etu;
  printf("Numéro d'étudiant : %d\n", monEtudiant.numero);
  printf("Moyenne : %.2f\n", monEtudiant.moyenne);
  printf("Nom : %s\n", monEtudiant.nom);
  printf("Prénom : %s\n", monEtudiant.prenom);

  return 0;
}

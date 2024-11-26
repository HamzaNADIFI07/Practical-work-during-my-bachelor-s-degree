#include <stdio.h>
#include <stdlib.h>

#include "ArbreBinaire.h"
#include "Affichage.h"

#define max(a,b) ((a)>(b)?(a):(b))
#define compare(a,b) ((a) > (b) ? 1 : ((a) < (b) ? -1 : 0))


#define DEBUT_ARBRE_MYSTERIEUX 12
#define FIN_ARBRE_MYSTERIEUX 24

/* Manipulation d'arbres binaires */

Noeud_t arbre1 (void) {
   Noeud_t arbre , gauche , droit;
   arbre = CreerNoeud(12);
   gauche = CreerNoeud(9);
   AjouterGauche(arbre,gauche);
   droit = CreerNoeud(8);
   AjouterDroite(arbre,droit);

   SauverArbreDansFichier(arbre,"arbre1");

   return arbre;

}

Noeud_t arbre2 (void) {
   Noeud_t arbre , gauche , gauche_droit , gauche_droite_gauche;
   arbre = CreerNoeud(12);
   gauche = CreerNoeud(9);
   AjouterGauche(arbre,gauche);
   gauche_droit = CreerNoeud(5);
   AjouterDroite(gauche,gauche_droit);
   gauche_droite_gauche = CreerNoeud(7);
   AjouterGauche(gauche_droit,gauche_droite_gauche);

   SauverArbreDansFichier(arbre,"arbre2");
  
   return arbre;
}

Noeud_t arbre3 (void) {
   Noeud_t arbre,gauche,droite,gauche_gauche,gauche_droite,droite_droite,droite_droite_gauche,droite_droite_droite;
   arbre = CreerNoeud(12);
   gauche = CreerNoeud(9);
   AjouterGauche(arbre,gauche);
   droite = CreerNoeud(8);
   AjouterDroite(arbre,droite);
   gauche_gauche =CreerNoeud(1);
   AjouterGauche(gauche,gauche_gauche);
   gauche_droite = CreerNoeud(5);
   AjouterDroite(gauche,gauche_droite);
   droite_droite = CreerNoeud(4);
   AjouterDroite(droite,droite_droite);
   droite_droite_gauche = CreerNoeud(7);
   AjouterGauche(droite_droite,droite_droite_gauche);
   droite_droite_droite = CreerNoeud(6);
   AjouterDroite(droite_droite,droite_droite_droite);

   SauverArbreDansFichier(arbre,"arbre3");

   return arbre;
}

void imprimer (Noeud_t a) {
   if (!EstVide(a)){
      if (! EstVide(Gauche(a))){
         imprimer(Gauche(a));
      }
      printf("%ld ",ValeurDuNoeud(a));
      if (! EstVide(Droite(a))){
         imprimer(Droite(a));
      }
      
      
   }
}

int taille (Noeud_t a) {
   if(EstVide(a)){
      return 0;
   }
   if(! EstFeuille(a)){
	   Noeud_t noeud_gauche = Gauche(a);
	   Noeud_t noeud_droit = Droite(a);
	   if(EstVide(noeud_gauche)){
         return 1+taille(noeud_droit);
      }
	   else if(EstVide(noeud_droit)){
         return 1+taille(noeud_gauche);
      }
	   else{
         return 1+taille(noeud_gauche) + taille(noeud_droit);
      }
   }
   else{
      return 1;
   }
}

int hauteur (Noeud_t a) {
   if(EstVide(a)){
      return -1;
   }
   if(! EstFeuille(a)){
	   Noeud_t noeud_gauche = Gauche(a);
	   Noeud_t noeud_droit = Droite(a);
	   if(EstVide(noeud_gauche)){
         return 1+hauteur(noeud_droit);
      }
	   else if(EstVide(noeud_droit)){
         return 1+hauteur(noeud_gauche);
      }
	   else{
		   int hauteur_noeud_gauche = 1+hauteur(noeud_gauche);
		   int hauteur_noeud_droit = 1+hauteur(noeud_droit);
		   if(hauteur_noeud_gauche>hauteur_noeud_droit){
            return hauteur_noeud_gauche;
         }
		   else{
            return hauteur_noeud_droit;
         }
	}
   }
   else{
      return 0;
   }
}

int nbFeuilles(Noeud_t a) {
   if(EstVide(a)){
      return 0;
   }
   if(! EstFeuille(a)){
	   Noeud_t noeud_gauche = Gauche(a);
	   Noeud_t noeud_droit = Droite(a);
	   if(EstVide(noeud_gauche)){
         return nbFeuilles(noeud_droit);
      }
	   else if(EstVide(noeud_droit)){
         return nbFeuilles(noeud_gauche);
      }
	   else {
         return nbFeuilles(noeud_gauche) + nbFeuilles(noeud_droit);
      }
   }else{
      return 1;
   }

}


/* Comptage d'arbres */

int nbArbres(int n) {
   if(n==0){
      return 1;
   }
   else{
	   int res = 0;
      int i;
	   for(i = 0; i<n ; i++ ){
		   res += nbArbres(i)*nbArbres(n-i-1);
	   }
	   return res;
   }
}

int nbArbresEfficace(int n){
   int i;
   int tableau[n+1];
   tableau[0]=1;
   for(i = 1; i <= n; i++) {
      int j;
      int res = 0;
      for(j = 0; j < i; j++) {
         res += tableau[j] * tableau[i - j - 1];
      }
      tableau[i] = res;
   }

   return tableau[n];
   
}
    
/* Manipulation d'arbres binaires de recherche */

Noeud_t abr1 (void) {
   Noeud_t arbre,gauche,droite,gauche_gauche,gauche_droite,gauche_gauche_gauche;
   arbre = CreerNoeud(6);
   gauche = CreerNoeud(4);
   AjouterGauche(arbre,gauche);
   droite = CreerNoeud(7);
   AjouterDroite(arbre,droite);
   gauche_gauche = CreerNoeud(2);
   AjouterGauche(gauche,gauche_gauche);
   gauche_droite = CreerNoeud(5);
   AjouterDroite(gauche,gauche_droite);
   gauche_gauche_gauche = CreerNoeud(1);
   AjouterGauche(gauche_gauche,gauche_gauche_gauche);

   SauverArbreDansFichier(arbre,"abr1");
   return arbre;
}

Noeud_t ajouter (value_t v, Noeud_t a) {
   value_t valeur_noeud_courant = ValeurDuNoeud(a);
   if(v<=valeur_noeud_courant){
	   Noeud_t fils_gauche = Gauche(a);
	   if(EstVide(fils_gauche)){
		   Noeud_t noeud_gauche = CreerNoeud(v);
		   AjouterGauche(a,noeud_gauche);
		   return a;
	   }
	   else{
		   ajouter(v,fils_gauche);
		   return a;
	   }
   }
   else{
	   Noeud_t filsDroit = Droite(a);
	   if(EstVide(filsDroit)){
		   Noeud_t noeud_droit = CreerNoeud(v);
		   AjouterDroite(a,noeud_droit);
		   return a;
	   }
	   else{
	   	ajouter(v,filsDroit);
	   	return a;
	   }
   }
}

Noeud_t abr2 (void) {
   Noeud_t arbre;
   arbre = CreerNoeud(5);
   ajouter (4, arbre);
   ajouter (2, arbre);
   ajouter (7, arbre);
   ajouter (6, arbre);
   ajouter (1, arbre);
   SauverArbreDansFichier(arbre,"abr2");
   return arbre;
}

Noeud_t abr3 (void) {
   Noeud_t arbre;
   arbre = CreerNoeud(7);
   ajouter (1, arbre);
   ajouter (4, arbre);
   ajouter (5, arbre);
   ajouter (6, arbre);
   ajouter (2, arbre);
   SauverArbreDansFichier(arbre,"abr3");
   return arbre;
}

int appartient (value_t v, Noeud_t a) {
   int comparaison;
   value_t valeurNoeudCourant;
   if (EstVide(a)) {
        return 0;
    }
    valeurNoeudCourant = ValeurDuNoeud(a);
    comparaison = compare(v, valeurNoeudCourant);
    if (comparaison == 0) {
        return 1; 
    } else if (comparaison <0) {
        return appartient(v, Gauche(a));
    } else {
        return appartient(v, Droite(a));
    }
}

int valeur_minimale (Noeud_t abr) {
   if(EstVide(abr)){
      return -1;
   }
   Noeud_t r = Gauche(abr);
   while(! EstFeuille(r)){
	   r = Gauche(r);
   }
   return ValeurDuNoeud(r);
}


int valeur_maximale (Noeud_t abr) {
   if(EstVide(abr)){
      return -1;
   }
   Noeud_t r = Droite(abr);
   while(! EstFeuille(r)){
	   r = Droite(r);
   }
   return ValeurDuNoeud(r);
}

/* Entier mysterieux */

Noeud_t construitArbreEntierMysterieux (value_t i, value_t j) { 
   if(i == j){
      return CreerNoeud(i);
   }
   Noeud_t arbre = CreerNoeud(i+((j-i)/2));
   if(i < i+((j-i)/2)){
      AjouterGauche(arbre,construitArbreEntierMysterieux(i,((j-i)/2)+i));
   }
   if(i+((j-i)/2)<j-1){
      AjouterDroite(arbre,construitArbreEntierMysterieux(((j-i)/2)+i+1,j));
   }
   return arbre;

}

void jouer (int i, int j) {
   Noeud_t arbreMyst = construitArbreEntierMysterieux(i,j);
   printf("choisir un nombre entre %d et %d ? :\n", i, j);
   int x;
   scanf("%d", &x);
   value_t noeud = ValeurDuNoeud(arbreMyst);
   printf("\n Est-ce %d ? \n",noeud);
   while (noeud != x){
      if (x < noeud){
         printf("\n Trop grand \n");
         arbreMyst = Gauche(arbreMyst);
      }
      else{
         printf("\n Trop petit \n");
         arbreMyst = Droite(arbreMyst);
      }
      noeud = ValeurDuNoeud(arbreMyst);
      printf("\n Est-ce %d \n ",noeud);
   }
   printf("\n C'est gagné !\n");

}


/* Tests sur les arbres binaires */

void testArbreBinaire(Noeud_t a) {
   imprimer(a); printf("\n");
   printf("Taille     = %d\n",(taille(a)));
   printf("Hauteur    = %d\n",(hauteur(a)));
   printf("nbFeuilles = %d\n",(nbFeuilles(a)));
}

/* Tests sur les arbres binaires de recherche */
void testABR (Noeud_t a) {
   int i;
   imprimer(a); printf("\n");
   printf("Taille     = %d\n",(taille(a)));
   printf("Hauteur    = %d\n",(hauteur(a)));
   printf("nbFeuilles = %d\n",(nbFeuilles(a)));
   printf("Valeurs présentes dans l'arbre : ");
   for (i = 0; i <= 10; i++) {
      if (appartient(i,a)) {
         printf("%d ",i);
      }
   }
   printf("\n");
}
  
/* Programme principal */
int main (int argc, char **argv) {

   int i;

   Noeud_t a1 = arbre1();
   Noeud_t a2 = arbre2();
   Noeud_t a3 = arbre3();
   
   testArbreBinaire(a1);
   testArbreBinaire(a2);
   testArbreBinaire(a3);

   DetruireArbre(a1);
   DetruireArbre(a2);
   DetruireArbre(a3);

   for (i = 0; i <= 19; i++) {
      printf("Le nombre d'arbres à %d noeuds est %d\n",i,(nbArbres(i)));
   }
   for (i = 0; i <= 19; i++) {
      printf("Le nombre d'arbres à %d noeuds est %d\n",i,(nbArbresEfficace(i)));
   }
   a1 = abr1();
   a2 = abr2();
   a3 = abr3();
   
   testABR(a1);
   testABR(a2);
   testABR(a3);

   DetruireArbre(a1);
   DetruireArbre(a2);
   DetruireArbre(a3);

   printf("Arbre mysterieux entre %d et %d:\n", DEBUT_ARBRE_MYSTERIEUX, FIN_ARBRE_MYSTERIEUX);
   imprimer(construitArbreEntierMysterieux(DEBUT_ARBRE_MYSTERIEUX, FIN_ARBRE_MYSTERIEUX));
   printf("\n");
  
   jouer(DEBUT_ARBRE_MYSTERIEUX, FIN_ARBRE_MYSTERIEUX);

   return 0;
   
}

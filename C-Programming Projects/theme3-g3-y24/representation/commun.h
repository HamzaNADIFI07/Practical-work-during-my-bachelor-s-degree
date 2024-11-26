/* ------------------------------
   commun.h
   Définition des types
   ------------------------------------------------------------
*/

#define NB_ETU 30


struct etudiant_s {
    unsigned int numero;
    float moyenne;
    char nom[50];
    char prenom[50];
};
struct etudiant_s2 {
    struct etudiant_s etudiants[NB_ETU];
};

union bloc_u {
    struct etudiant_s etu;
    char data[sizeof(struct etudiant_s2)];
};

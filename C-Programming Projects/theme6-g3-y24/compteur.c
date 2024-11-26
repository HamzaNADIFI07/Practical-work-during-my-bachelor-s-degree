#include <stdio.h>
#include "compteur.h"

int compteur(){
    static int compteur = 0;
    return compteur++;
}
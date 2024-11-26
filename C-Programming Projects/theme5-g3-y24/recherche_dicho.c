#include <stdio.h>

float * search_interval(float v, float *tab, float *end){
    int size = end - tab + 1;
    int m = size / 2;
    if (tab[m] == v){
        return &tab[m];
    }
    else if (tab[m]>v){
        return search_interval(v, tab, &tab[m-1]);
    }
    else{
        return search_interval(v, &tab[m+1], end);
    }
}

int main() {
    float tab[] = {1.0, 2.0, 3.0, 4.0, 5.0, 6.0};
    float v = 4.0;
    float *result = search_interval(v, tab, &tab[sizeof(tab) / sizeof(tab[0]) - 1]);
    if (result != NULL) {
        printf("La valeur %.1f est à la position %ld du tableau.\n", *result, result - tab);
    } else {
        printf("La valeur %.1f n'a pas été trouvée dans le tableau.\n", v);
    }
    return 0;
}
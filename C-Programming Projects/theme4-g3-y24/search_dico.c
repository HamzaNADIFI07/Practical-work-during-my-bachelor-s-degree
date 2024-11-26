# include <stdio.h>

float * search_dicho(float v, float *tab, int size) {
    int middle_pos = size / 2;
    if (size == 0) {
        return NULL;
    } else if (v == tab[middle_pos]) {
        return &tab[middle_pos];
    } else if (v < tab[middle_pos]) {
        return search_dicho(v, tab, middle_pos);
    } else {
        return search_dicho(v, &tab[middle_pos+1], size - middle_pos - 1);
    }
}


int main() {
    float tab[] = {1.0, 2.0, 3.0, 4.0, 5.0,6.0};
    int size = 6.0;
    float v = 4.0;
    float* result = search_dicho(v, tab, size);
    if (result != NULL) {
        printf("La valeur %.1f est à la position %ld du tableau.\n", *result, result - tab);
    } else {
        printf("La valeur %.1f n'a pas été trouvée dans le tableau.\n", v);
    }
    return 0;
    
}
#include <stdio.h>
#include <stdlib.h>
#include "file_generiques.h"

void print_char(void *i) {
    char *it = (char *)i;
    while (*it != '\0') {
        printf("%c", *it);
        it++;
    }
    printf("←");
}

int main() {
    struct gfifo_s *file = gfifo_new();

    char *str1 = "1";
    char *str2 = "2";
    char *str3 = "3";
    gfifo_enqueue(file, str1);
    gfifo_enqueue(file, str2);
    gfifo_enqueue(file, str3);

    gfifo_apply(file, print_char);
    printf("\n");

    gfifo_del(file);

    return 0;
}

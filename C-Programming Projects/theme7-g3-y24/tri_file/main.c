#include <stdio.h>
#include "file.h"
#include "file_generiques.h"
#include "tri_file.h"

int main() {
    int val;
    struct gfifo_s * gfifo = gfifo_new();
    int i = 1;
    printf("Entrer six entiers: \n");
    while( i<= 6 ){
        scanf("%d",&val);
        struct ififo_s  *tmp = ififo_new();
        ififo_enqueue(tmp, val);
        gfifo_enqueue(gfifo, tmp);
        i++;
    }
    struct ififo_s * file1, *file2, *file3;

    while(gfifo->size >1){
        gfifo_dequeue(gfifo, (void **)&file1);
        gfifo_dequeue(gfifo, (void **)&file2);
        file3 = ififo_merge(file1,file2);
        gfifo_enqueue(gfifo,file3);
        ififo_del(file1);
        ififo_del(file2);
    }
    gfifo_apply(gfifo, print_sorted_list);
    putchar('\n');
    ififo_del(file3);
    gfifo_del(gfifo);
    return 0;
}
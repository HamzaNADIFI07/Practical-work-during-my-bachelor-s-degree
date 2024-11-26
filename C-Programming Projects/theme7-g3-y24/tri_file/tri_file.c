#include <stdio.h>
#include "file.h"
#include "file_generiques.h"
#include "tri_file.h"


void print_int(int i)
{
    printf("%d←", i);
}

void print_sorted_list(void *p_val){
    struct ififo_s *f = p_val;

    if(ififo_is_empty(f)){
        return;
    }
    struct ififo_node_s *tmp = f->start;
    printf("\nVoici la liste triée des entiers saisis : \n");
    while(tmp != NULL){
        printf("%d ",(tmp->val));
        tmp = tmp->next;
    }
}

struct ififo_s *  ififo_merge(struct ififo_s *f1, struct ififo_s *f2){
    struct ififo_s *tmp = ififo_new();
    int f1_size = f1->size;
    int f2_size = f2->size;
    int i = 0;
    int j = 0;
    int k;
    while(i < f1_size && j < f2_size){
        if(f1->start->val < f2->start->val){
            ififo_dequeue(f1,&k);
            ififo_enqueue(tmp,k);
            i++;
        }
        else{
            ififo_dequeue(f2,&k);
            ififo_enqueue(tmp,k);
            j++;
        }
    }
    while( i < f1_size){
        ififo_dequeue(f1,&k);
        ififo_enqueue(tmp,k);
        i++;
    }
    while( j < f2_size){
        ififo_dequeue(f2,&k);
        ififo_enqueue(tmp,k);
        j++;
    }
    return tmp;
}


#include <stdio.h>
#include <stdlib.h>
#include "file.h"


struct ififo_s *ififo_new(){
    struct ififo_s *new = malloc(sizeof(struct ififo_s));
    if(new != NULL){
        new -> start = NULL;
        new -> end = NULL;
        new -> size = 0;
    }
    return new;
}


int ififo_is_empty(struct ififo_s *f){
    return (f -> start == NULL) && f -> size == 0;
}

int ififo_enqueue(struct ififo_s *f, int val){
    struct ififo_node_s *newNode = malloc(sizeof(struct ififo_node_s));

    if (newNode == NULL){
        return -1;
    }

    newNode -> val = val;
    newNode -> next = NULL;

    if (f -> end != NULL){
        f->end->next = newNode;
    }


    f->end = newNode;
    f->size++;

    if (f -> size == 1){
        f -> start = newNode;
    }
    return 0;
}

int ififo_dequeue(struct ififo_s *f, int *tete_val){
    struct ififo_node_s *first_start = f->start;
    if(ififo_is_empty(f)){
        return -1;
    }
    *tete_val = first_start->val;
    if (f->start == f->end) {
      f->end = first_start->next;
    }
    f->start = first_start->next;
    f->size--;
    free(first_start);
    return 0;
}

int ififo_head(const struct ififo_s *f){
    return f->start->val;
}
//J'ai rajouté la question 9,10 pour tester tous le programme test_fifo_int fournie à la fin de l'exercice:
int ififo_apply(struct ififo_s *f, func_t *fn){
    if(ififo_is_empty(f)){
        return -1;
    }
    struct ififo_node_s *tmp = f->start;
    while(tmp != NULL){   
        (*fn)(tmp->val);
        tmp = tmp->next;
    }
   
    return 0;
}

void ififo_del(struct ififo_s *f){
    int p; 
    while(f->size != 0){
        ififo_dequeue(f,&p);
    }
    free(f);
}
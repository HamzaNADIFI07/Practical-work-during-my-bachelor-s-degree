#include <stdio.h>
#include <stdlib.h>
#include"file_generiques.h"

struct gfifo_s *gfifo_new(){
    struct gfifo_s *new = malloc(sizeof(struct gfifo_s));
    if(new != NULL){
        new->start = NULL;
        new->end = NULL;
        new->size = 0;
    }
    return new;
}

int gfifo_is_empty(struct gfifo_s *f){
    return (f->start == NULL) && f->size == 0;
}

int gfifo_enqueue(struct gfifo_s *f, void *p) {

    struct gfifo_node_s *new_node = malloc(sizeof(struct gfifo_node_s));
   
    if(new_node == NULL) {
        return -1;
    }

    new_node->p_val = p;
    new_node->next = NULL;

    if(f->end != NULL){
        f->end->next = new_node;
    }
   
    f->end = new_node;
    f->size++;

    if(f->size == 1){
        f->start = new_node;
    }
    return 0;
}


int gfifo_dequeue(struct gfifo_s *f, void ** p_tete){

    struct gfifo_node_s *old_start = f->start;

    if(gfifo_is_empty(f)){
        return -1;
    }

   *(p_tete) = old_start->p_val;
    if (f->start == f->end) {
      f->end = old_start->next;
    }

    f->start = old_start->next;
    f->size--;
    free(old_start);

    return 0;
}

int gfifo_size(struct gfifo_s *f){
    return f->size;
}

int gfifo_apply(struct gfifo_s *f, gfunc_t *fn){

    if(gfifo_is_empty(f)){
        return -1;
    }

    struct gfifo_node_s *tmp = f->start;
    
    while(tmp != NULL){
        (*fn)(tmp->p_val);
        tmp = tmp->next;
    }
    return 0;
}

void gfifo_del(struct gfifo_s *f){
    void *p; 
    while(f->size != 0){
        gfifo_dequeue(f,&p);
    }
    free(f);
}
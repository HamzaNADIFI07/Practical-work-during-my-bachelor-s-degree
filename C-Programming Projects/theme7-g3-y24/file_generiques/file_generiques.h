#ifndef FILE__GENERIQUES__
#define FILE__GENERIQUES__

struct gfifo_node_s{
    void *p_val;
    struct gfifo_node_s *next;
};

struct gfifo_s{
    struct gfifo_node_s *start;
    struct gfifo_node_s *end;
    int size;
};


struct gfifo_s *gfifo_new();

int gfifo_is_empty(struct gfifo_s *f);

int gfifo_enqueue(struct gfifo_s *, void*);

int gfifo_dequeue(struct gfifo_s *, void**);

int gfifo_size(struct gfifo_s *);

typedef void (gfunc_t)(void*);
int gfifo_apply(struct gfifo_s *f, gfunc_t *fn);

void gfifo_del(struct gfifo_s *f);

#endif
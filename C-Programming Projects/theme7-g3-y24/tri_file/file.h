#ifndef FILE__H
#define FILE__H


struct ififo_node_s{
    int val;
    struct ififo_node_s *next;
};

struct ififo_s{
    struct ififo_node_s *start;
    struct ififo_node_s *end;
    int size;
};

struct ififo_s *ififo_new();

int ififo_is_empty(struct ififo_s *f);

int ififo_enqueue(struct ififo_s *,int);

int ififo_dequeue(struct ififo_s *,int *);

int ififo_head(const struct ififo_s *);

typedef void (func_t)(int);
int ififo_apply(struct ififo_s *f, func_t *fn);

void ififo_del(struct ififo_s *f);


#endif
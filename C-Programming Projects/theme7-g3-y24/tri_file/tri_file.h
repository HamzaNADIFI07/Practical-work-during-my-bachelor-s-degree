#ifndef TRI__FILE__
#define TRI__FILE__

void print_int(int i);

void print_sorted_list(void *p_val);

/* fusion de deux files d'entiers triées.
   condition d'utilisation : f1 et f2 triées
   effet de bord : f1 et f2 vides
   résultat : une nouvelle file d'entiers triée */
struct ififo_s * ififo_merge(struct ififo_s *f1, struct ififo_s *f2);


#endif
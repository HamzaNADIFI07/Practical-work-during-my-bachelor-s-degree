#ifndef FILTERINT__H
#define FILTERINT__H

int filter_int(int *src, int *dest, unsigned int size, int (*f)(int));

int est_pair(int n);

#endif
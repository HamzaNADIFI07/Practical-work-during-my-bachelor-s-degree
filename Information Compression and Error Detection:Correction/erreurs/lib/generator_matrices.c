#include <stddef.h>
#include "generator_matrices.h"

binary_matrix parity_generator(int n) {
  binary_matrix g = zero_matrix(n, n+1);
  int i;

  for (i = 0; i < n; i++) {
    set_matrix_value(g, i, i, 1);
    set_matrix_value(g, i, n, 1);
  }

  return g;
}

binary_matrix repeat3_generator(int n) {
   binary_matrix g = zero_matrix(n, n*3);
    int i;
    int j;
    for (i = 0; i < n; i++) {
      for (j = 0; j < n*3; j++){
        if ((j-i)%n == 0)
        set_matrix_value(g, i, j, 1);
      }
    }
    print_matrix(g);
    return g;
}

binary_matrix parity2d_generator() {
  binary_matrix parity2d = zero_matrix(4,9);
  set_matrix_row(parity2d,0, 1 ,0, 0, 0, 1, 0, 1, 0, 1 );
  set_matrix_row(parity2d,1, 0 ,1 ,0 ,0 ,1 ,0 ,0 ,1 ,1 );
  set_matrix_row(parity2d,2, 0 ,0, 1, 0, 0, 1, 1, 0, 1 );
  set_matrix_row(parity2d,3, 0 ,0 ,0 ,1 ,0 ,1 ,0 ,1 ,1);
  return parity2d;
}

binary_matrix hamming_generator() {
  binary_matrix hamming = zero_matrix(4,7);
  set_matrix_row(hamming,0, 1,0,0,0,1,1,0);
  set_matrix_row(hamming,1, 0,1,0,0,0,1,1);
  set_matrix_row(hamming,2, 0,0,1,0,1,0,1);
  set_matrix_row(hamming,3, 0,0,0,1,1,1,1);
  return hamming;
}

binary_matrix hammingp_generator() {
  binary_matrix hammingp = zero_matrix(4,8);
  set_matrix_row(hammingp,0, 1,0,0,0,1,1,0,1);
  set_matrix_row(hammingp,1, 0,1,0,0,0,1,1,1);
  set_matrix_row(hammingp,2, 0,0,1,0,1,0,1,1);
  set_matrix_row(hammingp,3, 0,0,0,1,1,1,1,0);
 return hammingp;
}  

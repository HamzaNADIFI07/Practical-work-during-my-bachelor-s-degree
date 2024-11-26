#include <stdio.h>
#include <stdlib.h>             /* pour rand() */
#include <string.h>             /* pour memcmp() */
#include <assert.h>             /* pour assert() */ 
#define SIZE    1021
#include "mmemcpy.h"
#include "memswap.h"


void mmemcpy(void *to, const void *from, unsigned int size){
    char *to_point = (char *) to;
    const char *from_point = (const char *) from;
    for(int i = 0; i < size; i++){
        *(to_point + i) = *(from_point + i);
    }
}


void test_mmemcpy(){
    char     tc_orig[SIZE], tc_dest[SIZE];
    long int ti_orig[SIZE], ti_dest[SIZE];
    int i;
   
    /* initialisation */
    for(i=0 ; i<SIZE ; i++) {
       tc_orig[i] = rand() % 256;
       tc_dest[i] = rand() % 256;
       ti_orig[i] = rand(); 
       ti_dest[i] = rand();
    }
   
    /* copie */
    mmemcpy(tc_dest, tc_orig, SIZE);
    mmemcpy(ti_dest, ti_orig, SIZE * sizeof(long int));
   
    /* vérification */
    assert(memcmp(tc_orig, tc_dest, SIZE) == 0); 
    assert(memcmp(ti_orig, ti_dest, SIZE * sizeof(long int)) == 0);
    printf("ALL TEST PASSED\n");
   }

int main(void){
    test_mmemcpy();
    test_memswap();
    return 0;
}

#include <stdio.h>
#include "mcu_wc.h"
#include "mcu_wl.h"
#include "mcu_putint.h"


int main(){
    int res = nbCarac();
    putdec(res);
    putchar('\n');
    return 0;

    int i;
    i=nbRetourLigne();
    putdec(i);
    putchar('\n');
    return 0;
}

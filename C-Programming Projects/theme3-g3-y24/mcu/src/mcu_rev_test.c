#include <stdio.h>
#include "mcu_macros.h"
#include "mcu_rev.h"
#include "mcu_readl.h"
#include "mcu_putint.h"
#include "mcu_fatal.h"

int main (void)
{
    char l[MAXLINE];
    while (readl(l) != EOF) {
        rev(l);
        printf("%s\n", l);
    }
    return 0;

}
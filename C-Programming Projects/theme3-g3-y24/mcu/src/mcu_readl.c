#include <stdio.h>
#include "mcu_fatal.h"
#include "mcu_readl.h"

int readl(char line[]){
int i =0 ;
  while(i==-1||line[i]!='\n'){
    i++;
    fatal(i+1<MAXLINE,"erreur:ligne trop longue",-1);
  int carac  =getchar();
  if ( carac ==EOF)
    return EOF;
  line[i]=carac;
  }
  line[i+1] = '\0';
    return i;
}

#include <stdio.h>
#include <stdlib.h>
#include "mcu_fatal.h"

void fatal(int assert , const char message[] , int status){
  if(assert)
    return;
  for (int i = 0 ; message[i]!='\0' ; i++)
    putchar(message[i]);
  exit(status);
}

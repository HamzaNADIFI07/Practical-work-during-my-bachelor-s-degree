#include <stdio.h>
#include "mcu_putint.h"

int put_digit(int digit){
  if(!(0<=digit && digit <=9))
    return -1;
  putchar('0'+digit);
  return 0;
}

int putdec(int d){
  if (d<0){
    d=-d;
    int c=putchar('-');
      if(c==-1)
	return c;}
  if(d/10){
    int c =putdec(d/10);
    if(c)
      return c;}
  return put_digit(d%10);
}

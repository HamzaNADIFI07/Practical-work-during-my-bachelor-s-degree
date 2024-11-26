#include <stdio.h>
#include "put_numbers.h"

extern int putchar(int);

int newline() {
    putchar('\n');
    return 0;
}
int put_test_line(int n)
{
    putchar('t');
    putchar('e');
    putchar('s');
    putchar('t');
    putchar(' ');
    putchar('#');
    putdec(n);
    putchar(':');

    return 0;
}

int put_digit(int d){
    int res;
    if(d<=9 && d>=0){
        res=putchar(d+'0');
    }else{
        res=-1;
    }
    return res;
}
int put_hdigit(int h) {
    int res;
    if (h >= 0 && h <= 9) {
        res = putchar(h + '0');
    } else if (h >= 10 && h <= 15) {
        res = putchar(h - 10 + 'A');
    } else {
        res = -1;  // Valeur invalide pour h
    }
    return res;
}

int powers(int a, int b) {
    int res = 1;
    if (b< 0) {
        return -1;
    }
    for (int i = 0; i < b; i++) {
        res = res * a;
    }
    return res;
}

int putdec(int d) {
    int compteur = 0;
    int var = d;
    if (d == 0) {
        return putchar('0');
    }
    if (d < 0) {
        putchar('-');
        d = -d;
    }
    while (var != 0) {
        compteur += 1;
        var = var / 10;
    }
    while (compteur > 0) {
        compteur -= 1 ;
        putchar('0' + d/powers(10, compteur)) ;
        d = d % powers(10, compteur) ;
    }
    return 0;
}
int putbin(int b){
    long c=0x80000000;
    int deb=1;
    for(int i=0 ; i<32 ; i++){
        int bit = (b & c) ? 1 : 0 ;
        if (bit == 1) {
            deb = 0 ;
        }
        if (deb == 0 ) {
            putchar('0' + bit) ;
        }
        c = c >> 1;
    }
    if (deb) {
        putchar('0') ;
    }
    return 0 ;
}
int puthex(int a) {
    int i = 7;
    if (a == 0) {
        return putchar('0');
    }
    while (( (a>>(i*4)) & 0xF) == 0) {
        i-- ;
    }
    while (i >= 0) {
        if (put_hdigit((a>>(i*4)) & 0xF) == -1) return -1 ;
        i-- ;
    }
    return 0 ;
}


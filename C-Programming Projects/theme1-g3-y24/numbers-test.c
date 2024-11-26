#include <stdio.h>

int newline(void);
int newline() {
    putchar('\n');
}

int putdec(int d);
int newline(void);
int put_test_line(int n);


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

extern int putchar(int);
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

int main()
{/*
	printf("Bonjour\n");
    put_digit(5);
    put_digit(0);
    put_digit(12);
    newline();
    put_hdigit(5);
    put_hdigit(12);
    put_hdigit(-2);
    newline();
    putdec(-18);
    newline();
    putdec(2024);
    newline();
    putdec(0004);
    newline();
    int i=-2147483648;
    putdec(i);
    newline();
    putbin(5);
    newline();
    putdec(5&2);
    newline();
    putdec(5&-2);
    newline();
    puthex(16);
    newline();
    puthex(255);
    newline();
    */
 
    int i=-2147483648;
    put_test_line(1); putdec(214); newline();
    put_test_line(2); putdec(-74); newline();
    put_test_line(3); putdec(1); newline();
    put_test_line(4); putdec(-1); newline();
    put_test_line(5); putdec(0); newline();
    put_test_line(6); putdec(2147483647); newline();
    put_test_line(7); putdec(-2147483648); newline();
    put_test_line(8); putdec(-(-2147483648)); newline();
    put_test_line(9); puthex(0); newline();
    put_test_line(10); puthex(10); newline();
    put_test_line(11); puthex(16); newline();
    put_test_line(12); puthex(2147483647); newline();
    put_test_line(13); puthex(-2147483648); newline();
    put_test_line(14); puthex(0xCAFEBABE); newline();
    put_test_line(15); puthex(-1); newline();
    put_test_line(16); putbin(0); newline();
    put_test_line(17); putbin(1); newline();
    put_test_line(18); putbin(-1); newline();
    put_test_line(19); putbin(2147483647); newline();
    put_test_line(20); putbin(-2147483648); newline();

    return 0;
}


#include <stdio.h>
#include "put_numbers.h"


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
    long number=-2147483648;
    put_test_line(8); putdec(-number); newline();
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

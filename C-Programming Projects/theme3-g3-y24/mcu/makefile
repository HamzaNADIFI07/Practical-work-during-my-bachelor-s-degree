cc=gcc
CFLAGS = -Wall -Werror
CHEMIN = -o src/

all:mcu_test mcu_wc_wl_test mcu_rev_test

src/mcu_putdec.o : src/mcu_putint.c
	$(CC) $(CFLAGS) -c $^ $(CHEMIN)mcu_putint.o 

src/mcu_fatal.o : src/mcu_fatal.c
	$(CC) $(CFLAGS) -c $^ $(CHEMIN)mcu_fatal.o

src/mcu_readl.o : src/mcu_readl.c
	$(CC) $(CFLAGS) -c $^ $(CHEMIN)mcu_readl.o    

src/mcu_test.o: src/mcu_test.c
	$(CC) $(CFLAGS) -c $^ $(CHEMIN)mcu_test.o
    
mcu_test: src/mcu_putint.o src/mcu_test.o src/mcu_fatal.o src/mcu_readl.o
	$(CC) $(CFLAGS) -o build/mcu_test $^

mcu_wc_wl_test:src/mcu_putint.o src/mcu_wc.o src/mcu_wl.o src/mcu_wc_wl_test.o 
	$(CC) $(CFLAGS) -o build/mcu_wc_wl $^

mcu_rev_test:src/mcu_readl.o src/mcu_fatal.o src/mcu_rev.o src/mcu_rev_test.o 
	$(CC) $(CFLAGS) -o build/mcu_rev $^	
    
clean:
	rm -f src/mcu_putint.o src/mcu_fatal.o src/mcu_readl.o src/mcu_test.o src/mcu_wc_wl_test.o src/mcu_rev_test.o

.PHONY: all
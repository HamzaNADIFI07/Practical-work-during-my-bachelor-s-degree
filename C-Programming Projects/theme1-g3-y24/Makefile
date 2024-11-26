all: test

numbers-test: numbers-test.o
	gcc -o numbers-test numbers-test.o

numbers-test.o: numbers-test.c
	gcc -c numbers-test.c

test: numbers-test #COMPLETER LES DEPENDANCES
	./numbers-test

clean:
	rm -f *.o numbers-test tmp

.PHONY: all test clean

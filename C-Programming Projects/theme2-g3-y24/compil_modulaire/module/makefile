CC = gcc
CFLAGS = -Wall -Wextra

all: numbers_test

numbers_test: numbers_test.o put_numbers.o
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c put_numbers.h
	$(CC) $(CFLAGS) -c $< -o $@

test: numbers_test
	./numbers_test

clean:
	rm -f *.o numbers_test

.PHONY: all test clean

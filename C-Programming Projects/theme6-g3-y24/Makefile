CC = gcc
CFLAGS = -Wall -Wextra -g

all: compteur mstrdup

compteur: main_compteur.o compteur.o
	$(CC) $(CFLAGS) -o $@ $^

main_compteur.o: main_compteur.c compteur.h
	$(CC) $(CFLAGS) -c $<

compteur.o: compteur.c compteur.h
	$(CC) $(CFLAGS) -c $<

mstrdup: main_mstrdup.o mstrdup.o
	$(CC) $(CFLAGS) -o $@ $^

main_mstrdup.o: main_mstrdup.c mstrdup.h
	$(CC) $(CFLAGS) -c $<

mstrdup.o: mstrdup.c mstrdup.h
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f compteur mstrdup *.o

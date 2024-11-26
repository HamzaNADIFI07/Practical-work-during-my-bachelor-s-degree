# Compilation des fichiers source "numbers_test.c" et "put_numbers.c"
gcc -c numbers_test.c -o numbers_test.o
gcc -c put_numbers.c -o put_numbers.o

# Création de l'exécutable "numbers_test"
gcc -o numbers_test numbers_test.o put_numbers.o
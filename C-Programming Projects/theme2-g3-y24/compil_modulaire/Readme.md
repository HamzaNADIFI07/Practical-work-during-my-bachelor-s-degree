# Compilation modulaire

Faites dans ce dossier votre travail sur la compilation modulaire.

## 2 Compilation modulaire:

### EXERCICE 15:

La ligne de commande utilisé pour générer le fichier objet "put_numbers.o" à partir du fichier source "put_numbers.c" est :  

**gcc -c put_numbers.c -o put_numbers.o**  

Non on ne peut pas éxecuter notre programme vu qu'on ne dispose pas encore de la fonction main.  

### EXERCICE 16:

Parmi les fonctions du fichier put_numbers.c qui devraient etre privées : "put_digit" ; "put_hdigit" ; "powers" ; "putdec" ; "putbin" ; "puthex".

### EXERCICE 17:
L'avertissement est du au fait que la fonction "putdec" s'attend à prendre en paramètre un argument de type int du coup quand on fait la conversion directement à l'intérieur de la fonction ça nous affiche un warning, donc pour résoudre le problème, j'ai rajouter une ligne de code où j'ai stocker le chiffre -2147483648 dans une variable number après je l'ai remplacer directement dans la fonction.

### EXERCICE 18:
Les fonctions privées ne doivent pas etre déclarées dans le fichier d’en-tete parce qu'ils sont destinées à être utilisées uniquement à l’intérieur du fichier où elles sont définies, et en les déclarant dans le fichier d’en-tete, ça les rendera visibles à l’extérieur et c'est ce qui n'est pas le but.

### EXERCICE 19:
Pour pouvoir lier ce module "numbers-test.o" avec le module "put numbers.o" pour produire un programme executable "numbers-test", j'ai du enlever les "static" que j'avais mis auparavant et j'ai déclarer tous les prototypes des fonctions implémentées dans "put_numbers" dans le fichier "put_numbers.h" pour pouvoir appeller toutes ces fonctions dans mon "numbers_test.c" sans aucun soucis.

### EXERCICE 20:
Le script bash appellez compile_test_numbers.sh contiendra les lignes de commande suivantes:  

**gcc -c numbers_test.c -o numbers_test.o**  
**gcc -c put_numbers.c -o put_numbers.o**  
**gcc -o numbers_test numbers_test.o put_numbers.o**  

### EXERCICE 22:
Cette règle permet de spécifier comment générer l'exécutable "numbers_test" à partir des fichiers objets "numbers_test.o" et "put_numbers.o"  
La commande éxecuté  si cette règle est considérée est :  
**gcc -o numbers_test numbers_test.o put_numbers.o**

### EXERCICE 23:
### Q1:

#### Scénario 1 :  
    +Unités de compilation :  
        **main.o**  
        **foo.o**  
    +Fichiers d'en-tête inclus :  
        **main.o** inclus **"foo.h"**  
#### Scénario 2 :  
    +Unités de compilation :  
        **main.o**  
        **foo.o**  
    +Fichiers d'en-tête inclus :  
        **main.o** inclus **"foo.h"**  
        **foo.o** inclus **"foo.h"**  
#### Scénario 3 :  
    +Unités de compilation :  
        **main.o**  
        **foo.o**  
    +Fichiers d'en-tête inclus :  
        Aucun fichier d'en-tête inclus dans ces unités de compilation.  

### Q2:

#### Scénario 1 :  
    +Fonction foo() :  
        Définie dans : **foo.c**  
        Déclarée dans : **foo.h**  
#### Scénario 2 :  
    +Fonction foo() :  
        Définie et déclarée dans : **foo.h**  
#### Scénario 3 :  
    +Fonction foo() :  
        Définie dans : **foo.c**  
        Déclarée dans : **foo.h**  
Et bien sure la fonction **main()** est définie et déclarée dans main.c  

### Q3:

#### Scénario 1 :  
    +La fonction **foo()** est définie dans **foo.c** et déclarée dans **foo.h**.  
    +La fonction **main()** est définie et déclarée dans main.c et inclus foo.h, où la fonction foo() est déclarée.  
#### Scénario 2 :  
    +La fonction **foo()** est définie et déclarée dans **foo.h**.  
    +La fonction **main()** est définie et déclarée dans **main.c** et inclus **foo.h**, où la fonction **foo()** est déclarée.  
#### Scénario 3 :  
    +La fonction **foo()** est définie dans **foo.c** et déclarée dans **foo.h**.  
    +La fonction **main()** est définie et déclarée dans main.c mais n'inclus pas **foo.h**, où la fonction **foo()** est déclarée.  

### Q4:

#### Scénario 1 :  
    +Le fichier exécutable est main.  
        Dans le fichier **main.c**, la fonction **main()** est définie une fois.  
        Dans le fichier **foo.c**, la fonction **foo()** est définie une fois.  
#### Scénario 2 :  
    +Le fichier exécutable est main.  
        Dans le fichier **main.c**, la fonction **main()** est définie une fois.  
        Dans le fichier **foo.c**, la fonction **foo()** est définie une fois.  
#### Scénario 3 :  
    +Le fichier exécutable est main.  
        Dans le fichier **main.c**, la fonction **main()** est définie une fois.  
        Dans le fichier **foo.c**, la fonction **foo()** est définie une fois.  
### Q5:
La seul anomalie que j'ai constaté est dans le fichier **main.c** du scénario 3 où on incluait pas le fichier le **foo.h** où la fonction **foo()** est déclarée.  
Pour résoudre le problème, il faudra rajouter la ligne de code suivante:  
**# include ” foo . h”**

### EXERCICE 24:
La valeur de i après la première boucle est 0  

L'erreur était du à la condition d'arret de la boucle, qui débutait à i=0 et s'arretait quand i vaut 10 alors que notre tableau tab contenait que 10 éléments 











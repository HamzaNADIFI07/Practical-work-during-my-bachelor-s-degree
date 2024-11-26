# Semaine 3 : Les outils de compilation (1/2)

## 1 Le préprocesseur:

### Exercice 1:
Le programme ne peut pas fonctionner parce que la variable T n'est pas définie.

### Exercice 2:
Le programme ainsi compilé affiche "DA"

### Exercice 3:
Le programme ainsi compilé affiche "DB"

### Exercice 5:
fait et testé avec  succés, nous renvoie 22 ce qui correspond à la ligne ou ln est déclaré.

### Exercice 6:
Le programme ainsi compilé affiche 01 + un retour à la ligne

### Exercice 8:
Pour que l'affichage n'aie pas lieu, il faut que la valeur de NO_LOG==1 donc en compilation, on va définir la valeur de NO_LOG par la ligne de commande suivante: gcc -DNO_LOG=1 -o compcond compcond.c

### Exercice 9:
Si on ne définit pas SIZE sur la ligne de compilation, on obtiendra l'erreur "définissez SIZE avec l'option -D SIZE=n"
******************************************************
hamzanadifi@MacBook-Pro-de-Hamza prepro % gcc -o compchk compchk.c
compchk.c:2:2: error: "dfinissez SIZE avec l'option -D SIZE=n"
#error "définissez SIZE avec l'option -D SIZE=n"
 ^
1 error generated.
******************************************************

### Exercice 10:
Si on définit une valeur de SIZE qui n’est pas une puissance de 2, on obtient l'erreur "SIZE devrait être une puissance de 2."
Parce que "#if SIZE & (SIZE-1)" vérifie si SIZE est une puissance de 2 en vérifiant si tous les bits à l'exception du bit le moins significatif sont à zéro.

### Exercice 11:
Le nom du fichier dans lequel la fonction putchar() est déclarée dans le fichier d'en-tete "<stdio.h>".
On a obtenue cette information grace à la ligne de commande **"man putchar"**

### Exercice 12:
La fonction putchar() est déclarée comme ceci :
**"int putchar(int);"**

### Exercice 14:
Après modification du code ça nous a bien afficher **342**




# Hamza NADIFI

## Compteur:

Après execution avec la commande:
```
./compteur
```
On a eu comme résultat:
```
0  
1  
2  
3  
4  
5  
6  
7  
8  
9  
```

## Dupliquer une chaîne:

### Q1:
En cas de problème de création d'un emplacement mémoire, la fonction renvoir `NULL`.
Après execution avec la commande:
```
./mstrdup Hamza NADIFI
```
On a eu comme résultat:
```
Chaîne originale : Bonjour, Hamza NADIFI !
Copie de la chaîne : Bonjour, Hamza NADIFI !
```
## Tableaux grandissants:

### Q1:
Après execution avec la commande:
```
make test
```
On a eu comme résultat, la création d'un fichier tmp avec les memes numéros que le fichier sortie.txt
```
./validation < donnees.txt > tmp
diff -q tmp sortie.txt
```
Et après éxecution de cette commande:
```
diff -q tmp sortie.txt
```
On a rien eu comme résultat ce qui veut dire qu'il n'y a aucune difference entre le fichier `tmp` et le fichier `sortie.txt`.

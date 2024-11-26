# Tp Arbres binaires


## État du TP

Décrivez ici l'état d'avancement du TP.

## Réponses aux questions

Indiquez ici les réponses aux questions posées dans le TP. Vous
reprendrez le numéro de la section et le numéro de la question. Par
exemple pour répondre à la question 3 de la section 2.4 vous indiquerez :

## Décomptes sur les arbres

### Q5:
Après compilation et execution de notre programme avec les commandes suivantes:  

```
gcc -c Affichage.c -o Affichage.o  
gcc -c Test_arbre.c -o Test_arbre.o  
gcc -c ArbreBinaire.c -o ArbreBinaire.o  
gcc Test_arbre.o Affichage.o ArbreBinaire.o -o Test_arbre  
./Test_arbre  
```
ou bien avec la commande:
```
make Test_arbre  
./Test_arbre  
```
On a eu comme résultat:  

```
9 12 8  
Taille     = 3  
Hauteur    = 1  
nbFeuilles = 2  
9 7 5 12  
Taille     = 4  
Hauteur    = 3  
nbFeuilles = 1  
1 9 5 12 8 7 4 6  
Taille     = 8  
Hauteur    = 3  
nbFeuilles = 4  
Le nombre d'arbres à 0 noeuds est 1  
Le nombre d'arbres à 1 noeuds est 1  
Le nombre d'arbres à 2 noeuds est 2  
Le nombre d'arbres à 3 noeuds est 5  
Le nombre d'arbres à 4 noeuds est 14  
Le nombre d'arbres à 5 noeuds est 42  
Le nombre d'arbres à 6 noeuds est 132  
Le nombre d'arbres à 7 noeuds est 429  
Le nombre d'arbres à 8 noeuds est 1430  
Le nombre d'arbres à 9 noeuds est 4862  
Le nombre d'arbres à 10 noeuds est 16796  
Le nombre d'arbres à 11 noeuds est 58786  
Le nombre d'arbres à 12 noeuds est 208012  
Le nombre d'arbres à 13 noeuds est 742900  
Le nombre d'arbres à 14 noeuds est 2674440  
Le nombre d'arbres à 15 noeuds est 9694845  
Le nombre d'arbres à 16 noeuds est 35357670  
Le nombre d'arbres à 17 noeuds est 129644790  
Le nombre d'arbres à 18 noeuds est 477638700  
Le nombre d'arbres à 19 noeuds est 1767263190  
  
Taille     = 0  
Hauteur    = -1  
nbFeuilles = 0  
Valeurs présentes dans l'arbre :  
  
Taille     = 0  
Hauteur    = -1  
nbFeuilles = 0  
Valeurs présentes dans l'arbre :  
  
Taille     = 0  
Hauteur    = -1  
nbFeuilles = 0  
Valeurs présentes dans l'arbre :  
Arbre mysterieux entre 12 et 24:  
  
```
Nous observons une croissance très rapide du nombre d'arbres binaires possibles de manière exponentielle en fonction de n (taille de l'arbre).
Nous constatons également que tant que ces valeurs deviennent très grandes rapidement, cela posera des défis en termes de calcul et de temps d'exécution.

### Q7:
Après calcule des resultats pour n compris entre 0 et 19 avec la fonction **nbArbresEfficace**, on a eu le meme résultat qu'avec la fonction nbArbres.
```
9 12 8 
Taille     = 3
Hauteur    = 1
nbFeuilles = 2
9 7 5 12 
Taille     = 4
Hauteur    = 3
nbFeuilles = 1
1 9 5 12 8 7 4 6 
Taille     = 8
Hauteur    = 3
nbFeuilles = 4
Le nombre d'arbres à 0 noeuds est 1
Le nombre d'arbres à 1 noeuds est 1
Le nombre d'arbres à 2 noeuds est 2
Le nombre d'arbres à 3 noeuds est 5
Le nombre d'arbres à 4 noeuds est 14
Le nombre d'arbres à 5 noeuds est 42
Le nombre d'arbres à 6 noeuds est 132
Le nombre d'arbres à 7 noeuds est 429
Le nombre d'arbres à 8 noeuds est 1430
Le nombre d'arbres à 9 noeuds est 4862
Le nombre d'arbres à 10 noeuds est 16796
Le nombre d'arbres à 11 noeuds est 58786
Le nombre d'arbres à 12 noeuds est 208012
Le nombre d'arbres à 13 noeuds est 742900
Le nombre d'arbres à 14 noeuds est 2674440
Le nombre d'arbres à 15 noeuds est 9694845
Le nombre d'arbres à 16 noeuds est 35357670
Le nombre d'arbres à 17 noeuds est 129644790
Le nombre d'arbres à 18 noeuds est 477638700
Le nombre d'arbres à 19 noeuds est 1767263190
Le nombre d'arbres à 0 noeuds est 1
Le nombre d'arbres à 1 noeuds est 1
Le nombre d'arbres à 2 noeuds est 2
Le nombre d'arbres à 3 noeuds est 5
Le nombre d'arbres à 4 noeuds est 14
Le nombre d'arbres à 5 noeuds est 42
Le nombre d'arbres à 6 noeuds est 132
Le nombre d'arbres à 7 noeuds est 429
Le nombre d'arbres à 8 noeuds est 1430
Le nombre d'arbres à 9 noeuds est 4862
Le nombre d'arbres à 10 noeuds est 16796
Le nombre d'arbres à 11 noeuds est 58786
Le nombre d'arbres à 12 noeuds est 208012
Le nombre d'arbres à 13 noeuds est 742900
Le nombre d'arbres à 14 noeuds est 2674440
Le nombre d'arbres à 15 noeuds est 9694845
Le nombre d'arbres à 16 noeuds est 35357670
Le nombre d'arbres à 17 noeuds est 129644790
Le nombre d'arbres à 18 noeuds est 477638700
Le nombre d'arbres à 19 noeuds est 1767263190

Taille     = 0
Hauteur    = -1
nbFeuilles = 0
Valeurs présentes dans l'arbre : 

Taille     = 0
Hauteur    = -1
nbFeuilles = 0
Valeurs présentes dans l'arbre : 

Taille     = 0
Hauteur    = -1
nbFeuilles = 0
Valeurs présentes dans l'arbre : 
Arbre mysterieux entre 12 et 24:

```
On constate que le temps d'éxecution de la première fonction est beaucoup plus important avec une compléxité de O(4 ** n) que le temps d'éxecution de la deuxième qui avec une complexité de O(n**2), ce qui prouve l'efficacité de la deuxième par raaport à la première.

## Arbres binaires de recherche:

### Q3:
Pour s'assurer simplement que les arbres construits sont bien des arbres binaires de recherche, il faudra verifier que toutes les valeurs du sous-arbre gauche doivent être inférieures ou égales à la valeur du nœud et que toutes les valeurs du sous-arbre droit doivent être strictement supérieures à la valeur du nœud.

### Q7:
Pour les 3 arbres, la recherche de la valeur 0 , s'effectue en 6 comparaisons parce que 0 n'est present dans aucun des 3 arbres 
donc ce qui fait qu'on est obligé de passer sur tout les noeuds de  l'arbre , vu que les 3 arbres sont de tailles 6 donc on effectue 6 compraisons.

### Q8:

La valeur `minimal` de l'arbre binaire de recherche est **la premiere feuille à gauche**.
La valeur `maximal` de l'arbre binaire de recherche est **la premiere feuille à droite**. 

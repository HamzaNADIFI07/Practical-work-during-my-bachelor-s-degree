# TP tri rapide


## État du TP

Décrivez ici l'état d'avancement du TP.

## Réponses aux questions

Indiquez ici les réponses aux questions posées dans le TP. Vous
reprendrez le numéro de la section et le numéro de la question. Par
exemple pour répondre à la question 3 de la section 2.4 vous indiquerez :

### Question Rappel sur le tri rapide:

### Q1:
La méthode de tri sur place est utilisé par le tri par insertion, le tri par selection...

### Q2:
Pour partitionner un tableau sans avoir à utiliser de l'espace mémoire supplémentaire, il faut faire des échanges d'éléments.

### Q3:
Afin de déterminer que le partitionnement est correctement réalisé, il faut :

1) Que la longueur des deux partitions soit égale à celle du tableau initial passé en paramètre.

2) Et que le premier élément (le pivot) du deuxième tableau partitionné soit strictement supérieur à tous ceux du première tableau, mais aussi inférieur ou égal aux éléments du second tableau.

### Q9:

### Pivot aléatoire:

### Q4:

On a 267.1 comparaisons en moyenne avec un pivot aléatoire, et 275.32 comparaisons en moyenne quand on prend le premier élèment comme pivot.
Il est donc plus efficace de chosir un pivot aléatoire.

### Q5:
Le tri rapide est plus rapide que le tri fusion pour les tableaux de grande taille en raison de sa complexité moyenne inférieure

### Q6:
Les tableaux croissants sont déjà partiellement triés, ce qui réduit le nombre de comparaisons nécessaires pour les trier par rapport aux tableaux aléatoires

### Q7:
La valeur du pivot dans le pire des cas pour le tri rapide est soit la valeur maximale ou la valeur minimale, ce qui nous donne une complexité de O(n²)
L'équation de recurrence est: C(n) = 1 + C(0) + C(n-1)

moyenne:
pivot aléat.= 277.040000 comp
pivot naive= 274.320000 comp

moyenne:
pivot aléat.= 267.100000 comp
pivot naive= 275.320000 comp

### Pivot optimal:

### Q1:
Théoriquement la meilleure valeur à choisir pour le pivot est la valeur de la mediane du tableau , elle permet de diviser le tableau en parties equitable ce qui permet de réduire le nombre de comparaisons nécessaire pour trier le tableau

### Q4:
On peut conclure que le tri avec le pivot optimal est le plus efficaces en termes de comparaisons d'éléments.

## Les graphes:
![random](src/images/random.png)
![increasing](src/images/increasing.png)
![optimal](src/images/optimal.png)

### Q5:
Soit n la taille du tableau à trier
c(n) = 0 si n=1
C(n) = 1 + C(n/2) + C((n-1)/2)
La complexité en temps est O(nlog n).

### Pivot réellement optimal ?

### Q1:

En comptant le nombre de comparaisons du choix du pivot, il vaut mieux choisir
aléatoirement le pivot (ou prendre le premier de la liste).
le tri avec ce pivot optimal n'est plus le plus efficace.
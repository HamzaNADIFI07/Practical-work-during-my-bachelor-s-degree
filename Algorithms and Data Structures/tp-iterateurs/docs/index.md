# Tp itérateurs


## État du TP

Décrivez ici l'état d'avancement du TP.

## Réponses aux questions

Indiquez ici les réponses aux questions posées dans le TP. Vous
reprendrez le numéro de la section et le numéro de la question. Par
exemple pour répondre à la question 3 de la section 2.4 vous indiquerez :

### Parcours avec des itérateurs:

#### Q1:
Pour représenter un itérateur la structure de données la plus adaptée est un Objet avec 3 attribut "la liste elle meme, élement suivant, élement d'avant"

### Itérateurs à partir de la queue:

#### Q4:
Non, la fonction add n'a pas besoin d'etre modifier car on a déjà traité ce cas avant de modifier l'itérateur

### Suppression avec des itérateurs:

#### Q1:
Non, l'implantation réalisée ici est n'est pas complétement compatible avec des opérations de suppression car car elle ne prend pas en compte les modifications de la liste lors de la suppression d'éléments.
La position de l'itérateur après suppression sera celle d'après si l'térateur était sur l'élement suprimer sinon il reste à sa place mais je pense que y aura beaucoup de cas à gérer comme si l'élement supprimer est le dernier...etc

#### Q3:
On a ajouté cette dernière contrainte pour éviter de faire un appel à la fonction previous() vers le vide et declancher une exception.

#### Q4:
Pour supprimer tous les élements d'une liste grâce aux itérateurs, il faudre éxecuter la suite d'instruction suivante:

liste_iterator = l.get_listiterator()  

while liste_iterator.hasNext():  
    liste_iterator.remove()  

### Performance de l'accès au i-ème élément:

#### Q3:
Après éxecution du programme de test d'acces au i-ème élément d'une liste et la géneration d'un fichier tp3_test12.dat qui a produit des données interprétables par Gnuplot, j'ai eu comme résultat ce graphe si dessous:  
![test12](src/tp3_test12.png)
On constate une évolution des durées des deux programmes en fonction de la taille de la liste.
# Hamza NADIFI


# TP d'introduction à la pratique du langage C

Ce dépôt correspond au premier TP de PDC, dont le sujet est à https://www.fil.univ-lille.fr/~ballabriga/bpc/tdtp/tp_theme1.html


##  Instructions pour rendre votre travail avec gitlab

Pour permettre à votre chargé de TD de suivre votre travail sur ce projet :

* *forkez* ce dépôt (bouton _Fork_ ou _Fourcher_, _Créer une divergence_),
  - choissisez la visibilité _privé_, _private_, pour ce projet 
* dans le dépôt *forké*, ajoutez votre binôme et votre chargé de TD aux
  membres du projet avec l’accès _Developer_,
* éditez ce fichier `Readme.md` pour indiquer vos noms (membres du
  binôme) et supprimer ce paragraphe d’instructions.

Voyez les instructions précises dans le sujet de TP. 

## Contenu de ce dépôt

* `prog1.c` premier programme, à indenter
* `numbers-*` section _Différents sens pour les mêmes nombres_ du sujet 
* `prepro/` section _Le préprocesseur_ du sujet 
* `module/` section _Compilation modulaire_ du sujet
* `mcu/` section _Mes commandes Unix_ du sujet 

## Réponses au question du Tp

### Exercice 1:

Pour consulter la docummentation d'une fonction, il faudra exécuter la commande suivante: man NOM_DE_LA_FONCTION
Dans notre cas man putchar

## Exercice 2:

Pour déterminer la version de notre emacs, il faudra exécuter la commande suivante dans le terminal: emacs --version
Dans mon cas, dans mon ordinateur personnel la version est: GNU Emacs 29.1

## Exercice 3:

La notation <C-> utiliser dans la carte de réference signifie la touche controle ou command ça dépend des ordinateur.
La notation <M-> utiliser dans la carte de réference signifie la touche Meta ou Alt ça dépend des ordinateur.

## Exercice 7:
En considérant que le code source est dan le fichier prog1.c, pour compiler le code source et produire un programme executable dans prog1, il faudra executer la commande suivante: gcc -o prog1 prog1.c
Et pour executer le fichier compilé, il faudra executer la commande suivante: ./prog1

## Exercice 12:
La commande utiliser pour lister les fichiers dans le répertoire courant est : ls (et pour inclure les fichiers cachés ls *)
Pour compiler prog1.c la commande utiliser est : gcc -o prog1 prog1.c
L'execution de gcc a crée un fichier exécutable prog1

## Exercice 13:
Pour lancer le fichier executable qui a été crée lors de l'exercice précedent, il faudra executer la commande suivante:
./NOM_FICHIER_EXECUTABLE, dans notre cas ./prog1
Après comparaison entre l'affichage et notre réponse à l'exercice 11 et aux informations données avant l'exercice 11, on peut bien confirmer qu'en langage C les valeurs passer en paramètre dans putchar et qui sont des int sont bien des codes ASCII

## Exercice 15:
Ce programme prend en paramètre un code ASCII et renvoie son caractère.
La valeur que reçoit la variable a est le caractère de code ASCII de l'entier x passé en paramètre
La valeur que reçoit la variable b est le caractère de code ASCII de l'entier 65 passé en paramètre et qui est la caractère A
La ligne de commande à taper pour créer un fichier exécutable correspondant à prog est : gcc -o prog prog.c
Pour l'outil gdb, j'ai pas pu executer mon programme avec vu que mon ordinateur personnelle n'est pas adapter à cette outil, donc j'au utiliser le lldb qui fait la meme fonction du gdb

## Exercice20:
L'execution de ce code nous a affiché " - " parce que 2147483647 est la valeur maximale des entier possible et comme i =-2147483648 et -i=2147483648 donc ce -i qui vaut 2147483648 est une valeur hors la capacité maximale des int.



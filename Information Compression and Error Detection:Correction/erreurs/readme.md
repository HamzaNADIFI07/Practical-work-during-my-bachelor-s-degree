# Hamza NADIFI

## Je voudrais vous signaler monsieur que vous ce dépot c'est le deuxième que j'ai fais pour ce Tp vu que j'avais des écrasement de fichiers au causé des questions où on devrait unziper les fichiers, la premières fois on avant régler le problème ensemble lors de la deuxième séance de tp avec les commandes revert mais quand je suis rentrer chez moi j'avais tous mélanger du coup j'ai préferer tous refaire pour partir sur de bonne base.

## PARTIE 1:

### Q1.2:
Après avoir executer la commande: **echo "Bonjour tout le monde" | ./cbssm 0**, on a eu comme résultat **Bonjour tout le monde**, par contre une fois qu'on a varié le seuil de probabilité (entre 0 et 1), on a commencer à avoir des erreur dans notre résultat de retour par exemple qu'on met à la valeur de probabilité 0.1 le résultat de retour commence à avoir des erreurs **Joljouq(toU`le l>�a** et à chaque fois qu'on augmente la valeur de la probabilité d'erreur, ça nous affiche plus d'erreur, par exemple en 1, le résultat devient **�������ߋ���ߓ�ߒ�����** ce qui n'est plus lisible.

### Q1.3:
Après avois passer le fichier poeme.txt dans le CBSSM en exécutant la commande suivante: **cat data/poeme.txt | ./cbssm 0.02** avec une probabilité de 0.1, on a eu comme résultat de retour: 
```  
SouvenT lg c/eur qu’on croyait mort
Cécile Saurcge

SouVent le(coeur qu’n c�oyaIt mort
N’est qu���un animal dndor�i ;�Un eir q}i souffle un$peu plus fort
Va le réveiller àduma ;
Un ra�uau tombant de sa bran�he
Le faid bondir sur ses jarrets
Et, brill�nte, il voit sur les prés
\ui sourire la lunE blanche�
```
### Q1.4:
Après avoir essayer plusieurs valeur de probabilité pour déziper l'archive, la valeur où on a pu déziper l'archive c'est 0.001

### Q1.5:
Après avoir passer la l'image lille.gif à travers le CBSSM avec la commande suivante: **cat lille.gif | ./cbssm 0.005 > lille-0.005.gif**, j'ai essayer d'abord avec la valeur de probabilité 0.1 , 0.01 , mais ça n'a marché qu'avec la valeur 0.005.

### Q1.6:
Après avoir essayer le CBSSM sur different fichier (image, zip, text), pour image on a eu comme resultat approximative 0.005, et pour le text 0.01,et finalement pour le fichier zip on a eu 0.001, donc les fichier zip  ont la moindre tolérance au erreurs par rapport image ou au fichier text.
  
## PARTIE 2:

### Q2.1:
Le bit majoritaire est soit le 1er bit ET 2eme OU le 1er ET le 3eme OU le 2eme ET le 3eme

### Q2.3:
en lançant ./test_repeat, voilà le résultat:  
```
ALL TESTS PASSED  
Tests run: 1 (including 9 assertions)  
```
### Q2.4:
Les octets sont bien triplés.
Le résultat est:  
```
BBBooonnnjjjooouuurrr   tttooouuuttt   llleee   mmmooonnndddeee  
```
### Q2.5:
En ajoutant à la commande précedente le décodage comme ceci:  
  
**echo "Bonjour tout le monde" | ./encode repeat3 | ./decode repeat3**  
  
Nous avons ce résultat:  
  
**Bonjour tout le monde**  
  
Donc le décodage fonctionne.  

### Q2.6:
En exécutant la commande:  
  
**cat TP-Erreurs.zip | ./encode repeat3 | ./decode repeat3 > archive.zip**  
  
Ensuite la commande:  
  
**cmp -l TP-Erreurs.zip archive.zip**  
  
Cela n'affiche rien, ce qui veut que les 2 fichiers sont identiques.  

### Q2.7:
La commande cbssm est ajoutée après l'encodage et avant le décodage comme ceci:  
  
**cat TP-Erreurs.zip | ./encode repeat3 | ./cbssm p | ./decode repeat3 > archive.zip**  
  
Avec p: la probabilité d'erreurs à faire varier entre 0 et 1.  
  
### Q2.8:
L'image ne peut plus etre lu au dessus de ce seuil de probabilité **0.001**.  
  
**cat lille.gif | ./encode repeat3 | ./cbssm 0.001 | ./decode repeat3 > 2.8/lille.gif**  

  
## Partie 3:  
  
### Q3.3:
```
Generator matrix for parity coding [5, 4, 2]  
1 0 0 0 1  
0 1 0 0 1  
0 0 1 0 1  
0 0 0 1 1  
Word  
0 1 1 0  
Result of the coding  
0 1 1 0 0  
```
  
### Q3.5:
``` 
Generator matrix for repeat coding [12, 4, 3]  
1 0 0 0 1 0 0 0 1 0 0 0  
0 1 0 0 0 1 0 0 0 1 0 0  
0 0 1 0 0 0 1 0 0 0 1 0  
0 0 0 1 0 0 0 1 0 0 0 1  
Word  
0 1 1 0  
Result of the coding  
0 1 1 0 0 1 1 0 0 1 1 0  
``` 
  
### Q3.7:  
```
ALL TESTS PASSED  
Tests run: 2 (including 42 assertions)  
```
### Q3.8:
```
Generator matrix for parity coding [5, 4, 2]  
1 0 0 0 1  
0 1 0 0 1  
0 0 1 0 1  
0 0 0 1 1  
Word  
0 1 1 0  
Result of the coding  
0 1 1 0 0  
Transposed control matrix  
1  
1  
1  
1  
1  
--------------------------------------------------  
Generator matrix for repeat coding [12, 4, 3]  
1 0 0 0 1 0 0 0 1 0 0 0  
0 1 0 0 0 1 0 0 0 1 0 0  
0 0 1 0 0 0 1 0 0 0 1 0  
0 0 0 1 0 0 0 1 0 0 0 1  
Word  
0 1 1 0  
Result of the coding  
0 1 1 0 0 1 1 0 0 1 1 0  
Transposed control matrix  
1 0 0 0 1 0 0 0  
0 1 0 0 0 1 0 0  
0 0 1 0 0 0 1 0  
0 0 0 1 0 0 0 1  
1 0 0 0 0 0 0 0  
0 1 0 0 0 0 0 0  
0 0 1 0 0 0 0 0  
0 0 0 1 0 0 0 0  
0 0 0 0 1 0 0 0  
0 0 0 0 0 1 0 0  
0 0 0 0 0 0 1 0  
0 0 0 0 0 0 0 1  
```
  
### Q3.9:
```
Generator matrix for parity coding [5, 4, 2]  
1 0 0 0 1  
0 1 0 0 1  
0 0 1 0 1  
0 0 0 1 1  
Word  
0 1 1 0  
Result of the coding  
0 1 1 0 0  
Transposed control matrix  
1  
1  
1  
1  
1  
Syndrome for 0 1 1 0 0  
0  
Syndrome for 1 1 1 0 0  
1  
--------------------------------------------------  
Generator matrix for repeat coding [12, 4, 3]  
1 0 0 0 1 0 0 0 1 0 0 0  
0 1 0 0 0 1 0 0 0 1 0 0  
0 0 1 0 0 0 1 0 0 0 1 0  
0 0 0 1 0 0 0 1 0 0 0 1  
Word  
0 1 1 0  
Result of the coding  
0 1 1 0 0 1 1 0 0 1 1 0  
Transposed control matrix  
1 0 0 0 1 0 0 0  
0 1 0 0 0 1 0 0  
0 0 1 0 0 0 1 0  
0 0 0 1 0 0 0 1  
1 0 0 0 0 0 0 0  
0 1 0 0 0 0 0 0  
0 0 1 0 0 0 0 0  
0 0 0 1 0 0 0 0  
0 0 0 0 1 0 0 0  
0 0 0 0 0 1 0 0  
0 0 0 0 0 0 1 0  
0 0 0 0 0 0 0 1  
Syndrome for 0 1 1 0 0 1 1 0 0 1 1 0  
0 0 0 0 0 0 0 0  
Syndrome for 1 1 1 0 0 1 1 0 0 1 1 0  
1 0 0 0 1 0 0 0  
Corrected word: (NULL) 
``` 
  
### Q3.10:
**make test_linear_coding**
```
ALL TESTS PASSED  
Tests run: 3 (including 54 assertions)  
```
**./view_linear_coding**
```
Generator matrix for repeat coding [12, 4, 3]  
1 0 0 0 1 0 0 0 1 0 0 0  
0 1 0 0 0 1 0 0 0 1 0 0  
0 0 1 0 0 0 1 0 0 0 1 0  
0 0 0 1 0 0 0 1 0 0 0 1  
Word  
0 1 1 0  
Result of the coding  
0 1 1 0 0 1 1 0 0 1 1 0  
Transposed control matrix  
1 0 0 0 1 0 0 0  
0 1 0 0 0 1 0 0  
0 0 1 0 0 0 1 0  
0 0 0 1 0 0 0 1  
1 0 0 0 0 0 0 0  
0 1 0 0 0 0 0 0  
0 0 1 0 0 0 0 0  
0 0 0 1 0 0 0 0  
0 0 0 0 1 0 0 0  
0 0 0 0 0 1 0 0  
0 0 0 0 0 0 1 0  
0 0 0 0 0 0 0 1  
Syndrome for 0 1 1 0 0 1 1 0 0 1 1 0  
0 0 0 0 0 0 0 0  
Syndrome for 1 1 1 0 0 1 1 0 0 1 1 0  
1 0 0 0 1 0 0 0  
Corrected word: 0 1 1 0 0 1 1 0 0 1 1 0  
```
  
### Q3.11:
```
ALL TESTS PASSED  
Tests run: 5 (including 83 assertions)  
```
## Partie 4:
L'experimentation a été faite par un script bash **experimentations.sh**, où j'ai mis 4 expériences pour chaque méthode de correction d’erreurs, et j'ai regroupé tous les résultats dans un fichier **experimentations.txt**:  
```
Expérience 1 : avec un taux d'erreur de 0.01 pour TP-Erreurs.zip  
Expérience 2 : avec un taux d'erreur de 0.01 pour lille.gif  
Expérience 3 : avec un taux d'erreur de 0.001 pour TP-Erreurs.zip
Expérience 4 : avec un taux d'erreur de 0.001 pour lille.gif
```





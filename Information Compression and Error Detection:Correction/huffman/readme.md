# Hamza NADIFI

## Mise en œuvre de l’algorithme de Huffman:

### Q1.3:
Après avoir compilé avec la commande `make`.
Et executer avec la commande `./main tests/test1`, j'ai eu comme résultat:
```
[5, 97] [1, 98] [3, 99] 
[5, 97] [3, 99] [1, 98]
```
Et executer avec la commande `./main tests/test3`, j'ai eu comme résultat:
```
[6, 97] [1, 98] [4, 110] [2, 115] 
[6, 97] [4, 110] [2, 115] [1, 98]
```

### Q1.4:
* à quelle condition doivent s’arrêter les itérations ?
    - Les iterations continue jusqu'a ce qu'il n y est qu'un seul noeud qui sera la racine de l'arbre Huffman, ceci se produit quand lorsque toute les feuilles dans `leaves` on été traité et combiné et que toute les noeud interne son été combiné pour formé un seul arbre.
  
* à chaque itération, comment évoluent start_nodes, nb_nodes et nb_leaves, en fonction des résultats renvoyés par la fonction get_min_nodes ?
    - `nb_leaves`   : diminue quand les feuilles sont combiner pour former des noeud
    - `nb_nodes`    : augmente quand des noeud sont former en combinant des noeuds/feuilles mais diminue quand des noeud sont combiner
    - `start_nodes` : augmente quand un noeud au debut de la file `nodes` est utilisé pour former un nouveau noeud.

* à quelle position dans nodes est stocké le nouveau nœud créé à chaque itération ?
    - Il est placé a la fin de la file `nodes` donc à l'indice `start_nodes + nb_nodes - 1`

### Q1.6:
Après avoir compilé avec la commande `make`.
Et executer le test avec la commande `./test_huffman`, j'ai eu comme résultat:
```
ALL TESTS PASSED
Tests run: 2 (including 520 assertions)
```

## Expériences:
### Q2.1:
Pour executer le programme de compression des fichiers du tp2 stockés dans le dossier files, il faudra se positionner dans le dossier `inputs`:
```
make
```

### Q2.2:
Oui, plus l'entropie d'un fichier est faible, plus il est compressable donc pour les fichiers image, source et zip, ils sont trés bien compressés et pour l'audio il y a une petite différence quand meme par rapport aux autres types de fichiers.

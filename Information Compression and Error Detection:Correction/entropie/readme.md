# Hamza NADIFI

## Mise en œuvre du calcul de l’entropie:

### Q1.1:
L'entropie maximale est 8, car elle est atteinte quand tous les symboles sont tous codés sur 8 bits,et on la retrouve dans des fichiers où la probabilité d'apparitions de tous les symboles est la même.

### Q2.2:
Après compilation avec `make`, et éxecution avec ./test_entropy, j'ai eu comme résultat: 
```
ALL TESTS PASSED
Tests run: 2 (including 4 assertions)
```
### Q2.5:
Après compilation avec `make`, et éxecution avec ./test_entropy, j'ai eu comme résultat: 
```
ALL TESTS PASSED
Tests run: 2 (including 6 assertions)
```
### Q2.6:
Après compilation avec `make`, et éxecution avec `./filentropy lib/entropy.h`, j'ai eu comme résultat: 
```
Le fichier fait 1156 octets et a une entropie de 4.54 bits par octet
```
### Q2.7:
Selon le théorème du codage sans bruit, la taille optimale d'un fichier codé est déterminée par son entropie divisée par le logarithme en base 2 de la taille de l'alphabet utilisé pour représenter ses symboles. Pour la plupart des cas, avec un alphabet de 8 bits par symbole, la taille minimale du fichier codé serait d'environ l'entropie du fichier divisée par 8 bits par symbole. Ainsi, la taille optimale du fichier codé serait donc H(S)/8 bits.
### Q2.8:
Après compilation avec `make`, et éxecution avec `./filentropy lib/entropy.h`, j'ai eu comme résultat: 
```
Le fichier fait 1156 octets et a une entropie de 4.54 bits par octet
Au mieux un codage optimal améliorerait le stockage de ce fichier de 43 %
```

## Expériences:


### Q3.1:

|type       | adresse  |   nom    | taille ( octets)  |  entropie (bits / octet) |
|---        | ---      | ---      | ---      |---        |
|archive.tar    |   https://gitlab.com/bnb2002436/gitlab       |     archive_tar.tar     |   4 208 640       |       6.08   |
|archive.zip    |   https://gitlab.com/mrymakr/doxy-runner  |  archive_zip.zip      |  170 358     |   6.12       |
|  archive.zip  |  https://github.com/nashsu/FreeAskInternet  |  archive_zip2.zip  |  28 070  |  6.26  |
| image.jpg  |  https://commons.wikimedia.org/wiki/Main_Page#/media/File:Eucomis_kuiflelie._07-06-2023._(d.j.b).jpg  |  image1.jpg  | 7 375 183 | 7.77 |
| image.png  |  https://icon-icons.com/fr/icone/fichier-extension-png/78612  |  image2.png  |  5 846  |  8.00  |
|  audio.mp3  |  https://commons.wikimedia.org/wiki/File:An_audio_recording_of_an_Australian_Raven_(Corvus_coronoides).wav  | audio1.mp3  |136 121  |  8.00  |
|  audio.ogg  |  https://commons.wikimedia.org/wiki/File:Audio_H%C3%B6rbild_Grillenzirpen_-_nachts_um_3_im_F%C3%B6hrenwald_M%C3%B6dling.ogg  |audio2.ogg  |  387 342  |  7.99  |

### Q3.2:

Les fichiers très compressibles, comme les fichiers ZIP, ont une entropie faible en raison de leurs motifs et répétitions. En revanche, les fichiers moins compressibles, tels que les fichiers audio , ont une entropie élevée en raison de leur contenu.

## Instruction 0.2+0.1==0.3:
En effet, l'expression 0.2 + 0.1 == 0.3 peut retourner False en raison de petites erreurs d'arrondi. En informatique, les calculs avec des nombres à virgule flottante peuvent produire des résultats inattendus en raison de l'approximation binaire.  
Pour des comparaisons précises, il est recommandé d'utiliser des méthodes prenant en compte cette précision limitée, comme des seuils d'erreur acceptables.
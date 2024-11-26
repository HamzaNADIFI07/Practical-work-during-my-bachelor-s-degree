# méthode de correction d’erreurs: repeat3
# Expérience 1 : repeat3 avec un taux d'erreur de 0.01 pour TP-Erreurs.zip
echo -ne "0.01     TP-Erreurs.zip     repeat3    " > experimentations.txt
cat Fichiers_zip/TP-Erreurs.zip | ./encode repeat3 | ./cbssm 0.01 | ./decode repeat3 > Fichiers_zip/archive_experimentations.zip
cmp -bl Fichiers_zip/TP-Erreurs.zip Fichiers_zip/archive_experimentations.zip| wc -l >> experimentations.txt
# Expérience 2 : repeat3 avec un taux d'erreur de 0.01 pour lille.gif
echo -ne "0.01     lille.gif          repeat3    " >> experimentations.txt 
cat images/lille.gif | ./encode repeat3 | ./cbssm 0.01 | ./decode repeat3 > images/lille_experimentations.gif
cmp -bl images/lille.gif images/lille_experimentations.gif| wc -l >> experimentations.txt
# Expérience 3 : repeat3 avec un taux d'erreur de 0.001 pour TP-Erreurs.zip
echo -ne "0.001     TP-Erreurs.zip     repeat3    " >> experimentations.txt
cat Fichiers_zip/TP-Erreurs.zip | ./encode repeat3 | ./cbssm 0.001 | ./decode repeat3 > Fichiers_zip/archive_experimentations.zip
cmp -bl Fichiers_zip/TP-Erreurs.zip Fichiers_zip/archive_experimentations.zip| wc -l >> experimentations.txt
# Expérience 4 : repeat3 avec un taux d'erreur de 0.001 pour lille.gif
echo -ne "0.001     lille.gif          repeat3    " >> experimentations.txt 
cat images/lille.gif | ./encode repeat3 | ./cbssm 0.001 | ./decode repeat3 > images/lille_experimentations.gif
cmp -bl images/lille.gif images/lille_experimentations.gif| wc -l >> experimentations.txt


# méthode de correction d’erreurs: repeat3-linear
# Expérience 1 : repeat3-linear avec un taux d'erreur de 0.01 pour TP-Erreurs.zip
echo -ne "0.01     TP-Erreurs.zip     repeat3-linear    " >> experimentations.txt
cat Fichiers_zip/TP-Erreurs.zip | ./encode repeat3-linear | ./cbssm 0.01 | ./decode repeat3-linear > Fichiers_zip/archive_experimentations.zip
cmp -bl Fichiers_zip/TP-Erreurs.zip Fichiers_zip/archive_experimentations.zip| wc -l >> experimentations.txt
# Expérience 2 : repeat3-linear avec un taux d'erreur de 0.01 pour lille.gif
echo -ne "0.01     lille.gif          repeat3-linear    " >> experimentations.txt 
cat images/lille.gif | ./encode repeat3-linear | ./cbssm 0.01 | ./decode repeat3-linear > images/lille_experimentations.gif
cmp -bl images/lille.gif images/lille_experimentations.gif| wc -l >> experimentations.txt
# Expérience 3 : repeat3-linear avec un taux d'erreur de 0.001 pour TP-Erreurs.zip
echo -ne "0.001     TP-Erreurs.zip     repeat3-linear    " >> experimentations.txt
cat Fichiers_zip/TP-Erreurs.zip | ./encode repeat3-linear | ./cbssm 0.001 | ./decode repeat3-linear > Fichiers_zip/archive_experimentations.zip
cmp -bl Fichiers_zip/TP-Erreurs.zip Fichiers_zip/archive_experimentations.zip| wc -l >> experimentations.txt
# Expérience 4 : repeat3-linear avec un taux d'erreur de 0.001 pour lille.gif
echo -ne "0.001     lille.gif          repeat3-linear    " >> experimentations.txt 
cat images/lille.gif | ./encode repeat3-linear | ./cbssm 0.001 | ./decode repeat3-linear > images/lille_experimentations.gif
cmp -bl images/lille.gif images/lille_experimentations.gif| wc -l >> experimentations.txt


# méthode de correction d’erreurs: parity2d
# Expérience 1 : parity2d avec un taux d'erreur de 0.01 pour TP-Erreurs.zip
echo -ne "0.01     TP-Erreurs.zip     parity2d    " >> experimentations.txt
cat Fichiers_zip/TP-Erreurs.zip | ./encode parity2d | ./cbssm 0.01 | ./decode parity2d > Fichiers_zip/archive_experimentations.zip
cmp -bl Fichiers_zip/TP-Erreurs.zip Fichiers_zip/archive_experimentations.zip| wc -l >> experimentations.txt
# Expérience 2 : parity2d avec un taux d'erreur de 0.01 pour lille.gif
echo -ne "0.01     lille.gif          parity2d    " >> experimentations.txt 
cat images/lille.gif | ./encode parity2d | ./cbssm 0.01 | ./decode parity2d > images/lille_experimentations.gif
cmp -bl images/lille.gif images/lille_experimentations.gif| wc -l >> experimentations.txt
# Expérience 3 : parity2d avec un taux d'erreur de 0.001 pour TP-Erreurs.zip
echo -ne "0.001     TP-Erreurs.zip     parity2d    " >> experimentations.txt
cat Fichiers_zip/TP-Erreurs.zip | ./encode parity2d | ./cbssm 0.001 | ./decode parity2d > Fichiers_zip/archive_experimentations.zip
cmp -bl Fichiers_zip/TP-Erreurs.zip Fichiers_zip/archive_experimentations.zip| wc -l >> experimentations.txt
# Expérience 4 : parity2d avec un taux d'erreur de 0.001 pour lille.gif
echo -ne "0.001     lille.gif          parity2d    " >> experimentations.txt 
cat images/lille.gif | ./encode parity2d | ./cbssm 0.001 | ./decode parity2d > images/lille_experimentations.gif
cmp -bl images/lille.gif images/lille_experimentations.gif| wc -l >> experimentations.txt


# méthode de correction d’erreurs: hamming
# Expérience 1 : hamming avec un taux d'erreur de 0.01 pour TP-Erreurs.zip
echo -ne "0.01     TP-Erreurs.zip     hamming    " >> experimentations.txt
cat Fichiers_zip/TP-Erreurs.zip | ./encode hamming | ./cbssm 0.01 | ./decode hamming > Fichiers_zip/archive_experimentations.zip
cmp -bl Fichiers_zip/TP-Erreurs.zip Fichiers_zip/archive_experimentations.zip| wc -l >> experimentations.txt
# Expérience 2 : hamming avec un taux d'erreur de 0.01 pour lille.gif
echo -ne "0.01     lille.gif          hamming    " >> experimentations.txt 
cat images/lille.gif | ./encode hamming | ./cbssm 0.01 | ./decode hamming > images/lille_experimentations.gif
cmp -bl images/lille.gif images/lille_experimentations.gif| wc -l >> experimentations.txt
# Expérience 3 : hamming avec un taux d'erreur de 0.001 pour TP-Erreurs.zip
echo -ne "0.001     TP-Erreurs.zip     hamming    " >> experimentations.txt
cat Fichiers_zip/TP-Erreurs.zip | ./encode hamming | ./cbssm 0.001 | ./decode hamming > Fichiers_zip/archive_experimentations.zip
cmp -bl Fichiers_zip/TP-Erreurs.zip Fichiers_zip/archive_experimentations.zip| wc -l >> experimentations.txt
# Expérience 4 : hamming avec un taux d'erreur de 0.001 pour lille.gif
echo -ne "0.001     lille.gif          hamming    " >> experimentations.txt 
cat images/lille.gif | ./encode hamming | ./cbssm 0.001 | ./decode hamming > images/lille_experimentations.gif
cmp -bl images/lille.gif images/lille_experimentations.gif| wc -l >> experimentations.txt


# méthode de correction d’erreurs: hammingp
# Expérience 1 : hammingp avec un taux d'erreur de 0.01 pour TP-Erreurs.zip
echo -ne "0.01     TP-Erreurs.zip     hammingp    " >> experimentations.txt
cat Fichiers_zip/TP-Erreurs.zip | ./encode hammingp | ./cbssm 0.01 | ./decode hammingp > Fichiers_zip/archive_experimentations.zip
cmp -bl Fichiers_zip/TP-Erreurs.zip Fichiers_zip/archive_experimentations.zip| wc -l >> experimentations.txt
# Expérience 2 : hammingp avec un taux d'erreur de 0.01 pour lille.gif
echo -ne "0.01     lille.gif          hammingp    " >> experimentations.txt 
cat images/lille.gif | ./encode hammingp | ./cbssm 0.01 | ./decode hammingp > images/lille_experimentations.gif
cmp -bl images/lille.gif images/lille_experimentations.gif| wc -l >> experimentations.txt
# Expérience 3 : hammingp avec un taux d'erreur de 0.001 pour TP-Erreurs.zip
echo -ne "0.001     TP-Erreurs.zip     hammingp    " >> experimentations.txt
cat Fichiers_zip/TP-Erreurs.zip | ./encode hammingp | ./cbssm 0.001 | ./decode hammingp > Fichiers_zip/archive_experimentations.zip
cmp -bl Fichiers_zip/TP-Erreurs.zip Fichiers_zip/archive_experimentations.zip| wc -l >> experimentations.txt
# Expérience 4 : hammingp avec un taux d'erreur de 0.001 pour lille.gif
echo -ne "0.001     lille.gif          hammingp    " >> experimentations.txt 
cat images/lille.gif | ./encode hammingp | ./cbssm 0.001 | ./decode hammingp > images/_experimentations.gif
cmp -bl images/lille.gif images/lille_experimentations.gif| wc -l >> experimentations.txt
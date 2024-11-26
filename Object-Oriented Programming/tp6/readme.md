#
Hamza NADIFI
##
Objectif du tp:
Ce tp a pour objectif la creation et l'éxecution de plusieurs class avec leur methode qui gere la recuperation, la modification de couleur, ainsi de coordonnées...etc
##
Commande utilisé dans ce tp:
###
Pour génerer la documentation:
javadoc image -sourcepath src -d docs image
###
Pour compiler :
javac -sourcepath src src/image/*.java -d classes
###
Pour executer le programme:
java -classpath classes image.ImageMain
java -classpath classes image.ImageExampleMain
###
Pour compiler les tests:
javac -classpath image18.jar test/*.java
###
Pour executer les tests:
java -jar image18.jar ImageTest
###
Création du jar (Manifest):
jar cvfe image.jar image.ImageMain images -C classes image 
###
Les parties faites:
Tout a été fais sauf les tests des methodes suivantes: Image.negative() / Image.edgeExtraction()/  Image.decreaseNbGrayLevels()


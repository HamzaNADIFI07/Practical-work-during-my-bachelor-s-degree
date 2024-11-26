#
Hamza Nadifi
##
L'objective du Tp est dans un premier lieu de savoir organiser ses fichiers dans des packages (package...) et pouvoir faire appel à des classes de d'autre packages (import ...), et dans un deuxième lieu de conprendre les test, comment les compiler, les executer et pourvoir corriger les erreurs pour réussir tous les tests.
##
Pour génerer la documentation: 
javadoc -sourcepath src -subpackages vlille -d docs
###
Pour accéder à la documentation il faut accéder au fichier tp4/docs/index.html
###
Pour compiler les classes du projet il faut utiliser la commande:
javac -sourcepath src src/vlille/nomDeLaClass.java -d classes
###
Pour compiler un test il faut d'abord compiler son fichier source(exemple: Bike.java) et puis compiler le fichier test par la commande suivante:
javac -classpath junit-console.jar:classes test/...
###
Et pour compiler un tout les tests à la fois il faut utiliser la commande suivante:
javac -classpath junit-console.jar:classes test/vlille/*.java
###
Pour executer les classes du projet il faut utiliser la commande:
java -classpath classes nomDeLaClasse
Exemple: 
java -classpath classes BikeMain.java
java -classpath classes BikeStationMain.java


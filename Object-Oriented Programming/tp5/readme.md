#
Hamza NADIFI
##
Objectif du tp:
Le tp a pour objectif d'abord pour le premier exercice de se familiariser avec la création et l'execution des fichiers jar.
Pour le deuxième exercice , permet d'entrer dans le vif du concept de la programmtion orientée objet dont on nous demander de coder des classes , constructeurs, methodes, tests...
##
Pour compiler et excecuter la classe inputMain.java:
javac -sourcepath src InputMain.java -d classes
###
java -classpath classes InputMain.java
##
Pour compiler et excecuter la classe FirstBattleShipMain.java:
javac -sourcepath src FirstBattleShipMain.java -d classes
###
java -classpath classes FirstBattleShipMain.java
##
Pour compiler et excecuter la classe SecondeBattleShipMain.java:
javac -sourcepath src SecondeBattleShipMain.java -d classes
###
java -classpath classes SecondeBattleShipMain.java
##
Pour compiler et excecuter la classe ThirdBattleShipMain.java:
javac -sourcepath src ThirdBattleShipMain.java -d classes
###
java -classpath classes ThirdBattleShipMain.java
##
Pour compliler la classe Input.java:
javac -sourcepath src Input.java -d classes
##
Problème rencontrer:
Je n'arrive pas à compiler le fichier FirstBattleShipMain.java ça m'affiche que j'ai 16 erreurs 
Je n'arrive pas à trouver des solution pour la inputPosition et play de la class game
##
Pour créer les jar executable correspondant au main des deux classes SecondeBattleShipMain et ThirdBattleShipMain:
jar cvfe appli.jar SecondeBattleShipMain -C classes
###
jar cvfe appli1.jar ThirdBattleShipMain -C classes
##
 Et pour l'execution de ces fichiers jar on utilise: 
 java -jar appli.jar
 ###
 java -jar appli1.jar

#
Hamza NADIFI
##
Q1:

Algorithme de la methode play():
Tant que personne n’a gagné:
	player←this.nouveauJoueur()
	Récupérer la cellule où se trouve le joueur et l’affecter à la variable cellDepart de type Cell
	Si player peut jouer alors:
		entier dice ← player.twoDiceThrow()
		Afficher "Le joueur " + player + " lance les dés : " + dice
		Récuperer l’indice de la cellule d’arrivé et l’affecter à la variable cellArriver de type Cell
	sinon
		Afficher player + " est dans la cellule + indice de la cellule + ", " + player + " ne peut pas jouer"
	Fin Si
Fin Tant que
Déclarer que le jeu est gagner
Fin


##
Pour compiler les different fichier java dans le projet:

javac -sourcepath src -d classes src/goosegame/*.java
javac -sourcepath src -d classes src/goosegame/Board/*.java
##
Pour la création d'un jar executable:
jar cvfe appli.jar pack1.GameMain -C classes
##
Pour l'execution du fichier jar:
java -jar appli.jar
##
Pour l'execution du jeux:

java -classpath classes GameMain

##
Remarque:
j'ai du rajouter un nouveau attribut indiceOfPlayer à la classe Game qui réfere à l'indice du dernier joueurs qui a joué vu qu'on aura beaucoup besoin de cette attribut et j'ai pas trouver d'autre solution pour procéder sans cet attribut.
Et j'ai eu une erreur à la methode play de la class game

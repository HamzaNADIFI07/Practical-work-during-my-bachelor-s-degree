#
Hamza NADIFI

##
EXERCICE1:
###
Q2:

Le constructeur est « TV ».
Les attributs et leurs types:
	•	on : boolean
	•	brand : String
	•	channel: int
	•	soundVolume: int
	•	maxSound: int
On a 7 méthodes.
###
Q3.1:
Les valeurs des attributs tv1 et tv2 sont les indices des emplacement de stockages des objets
###
Q3.2:
Le résultat est 5
###
Q3.3:
L’appel de tv1.on ne renvoie rien car la le type de la méthode est « void ».
L’effet de cette appel est le fait d’allumer la tv donc la valeur de this.on deviens égale à True.
###
Q3.4:
Le résultat de l’appel de tv1.volumeUp() est rien car le type de la méthode est void, et son effet est de augmenter le volume de la tv donc la valeur de this.soundVolume s’accrémente par un 1 donc this.soundVolume deviens égale à 4.
###
Q3.5:
Aucun attribut n’aura changé car les conditions ne sont pas vérifier comme on a pas exécuter la méthode tv2.on la valeur de this.on reste encore False donc la condition this.on= True n’est pas verifié.
##
EXERCICE2:
###
Q1:
On constate qu’il ne s’affiche rien.
###
Q3.2:
On constate qu’on a des erreurs.
###
Q3.3:
L’erreur se situe dans la ligne 123
Le massage est : « Tv.java:123: error: ';' expected » et il indique qu’on a oublié un « ; ».
###
Q4.3:
On observe que qu’un dosssier a été créer sous le com de classes et qui contient le fichier Tv.class
##
EXERCICE4:
###
Q2:
On constate que les deux fichier Tv.class et TvMain.class se sont crée à nouveau.
##
Exercice5:
###
Q1:

Les attributs des objets books sont author de type class , title de type String ,  et publicationYear de type int.
La structure de données qui permet de mémoriser les différents objets Book dans un objet Library est sous forme de tableau codé sous la forme de : « this.theBooks = new Book[NB_BOOKS_MAX]».
Les méthodes de la Library sont : addBook , displayBooks , getNbBooks , getBook.

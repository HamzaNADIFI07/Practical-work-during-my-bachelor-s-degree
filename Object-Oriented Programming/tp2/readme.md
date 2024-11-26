#
Hamza NADIFI
##
Exercice1:
###
Q2:
On constate qu’à l’issue de la commande un fichier nommé docs a été crée dans le dossier .../poo/tp2/tv/
###
Q4:
On constate que meme dans la le fichier index.html le mot CHANNEL a été changé par channel.
##
Exercice2:
###
Q2:
Le type du paramètres args est String.
###
Q4:
On déduit que le role du paramètre args est de personnalisé  le résultat ça veut dire qu’il permet à l’utilisateur de donner n’importe quelle valeur au paramètre.
###
Q5:
On constate qu’il ne s’affiche rien sur la console et je pense qu’on pourra pas savoir l’origine du problème sans étudier le code car il se peut que la class ne contient pas des println ou d’autre fonctions qui permettent d’afficher des informations sur la console.
###
Q6:
On constate qu’elle nous a afficher un message « Usage : java TvMain3 <uneMarque>
  où  <uneMarque> correspond à la marque de la télé créée. »
###
Q6.1:
args.lenght représente la condition de présence d’un argument dans la méthode main.
###
Q6.2:
Cette valeur a été utiliser en condition if pour déclencher la méthode usage si l’argument n’existe pas 
elle a été utiliser pour afficher un message si l’argument n’existe pas.
##
Exercice5:
###
Q1.1:
Les signatures des méthodes de la class lightbulb sont:
Nom: getWatt / Paramètres et leurs types: ne prenne pas de paramètre / Type de la valeur de retour: int
Nom: getLumen / Paramètres et leurs types: ne prenne pas de paramètre / Type de la valeur de retour: int
Nom: getColor / Paramètres et leurs types: ne prenne pas de paramètre / Type de la valeur de retour: string
Nom: turnOn / Paramètres et leurs types: ne prenne pas de paramètre / Type de la valeur de retour: void
Nom: turnOff / Paramètres et leurs types: ne prenne pas de paramètre / Type de la valeur de retour: void
Nom: isOn / Paramètres et leurs types: ne prenne pas de paramètre / Type de la valeur de retour: void
Nom: toString / Paramètres et leurs types: ne prenne pas de paramètre / Type de la valeur de retour: String
###
Q1.2:
Les attributs nécessaire pour mettre en oeuvre ces méthodes sont:
Watt de type int / Lumen de type int / Color de type String / On de type boolean .
Le type le plus pertinent pour représenter le statut allumer ou éteint d’une ampoule est Boolean (True si on et False si off).
###
Q1.3:
Pour le constructeur de la class LightBulb je propose comme paramètres int Watt , int Lumen , String Color.

Hamza Nadifi

Exercice1:

https://webtp.fil.univ-lille.fr/~hamza.nadifi.etu/seance3/horloge.php?hours=4&minutes=42&seconds=16

Valeur non numerique:
https://webtp.fil.univ-lille.fr/~hamza.nadifi.etu/seance3/horloge.php?hours=4&minutes=42&seconds=%22hamza%22
Ça nous affiche une erreur:"must be of type int, string given"

Fatal error: Uncaught TypeError: angles(): Argument #3 ($seconds) must be of type int, string given, called in /home/l1/hamza.nadifi.etu/public_html/seance3/horloge.php on line 38 and defined in /home/l1/hamza.nadifi.etu/public_html/seance3/lib/fonctions_clock.php:10 Stack trace: #0 /home/l1/hamza.nadifi.etu/public_html/seance3/horloge.php(38): angles() #1 {main} thrown in /home/l1/hamza.nadifi.etu/public_html/seance3/lib/fonctions_clock.php on line 10

Valeur négative:
Quand on passe d'une valeur postive en seconde à une valeur négative, comme dans notre exemple -16, ça nous fais revenir de 30 seconde
https://webtp.fil.univ-lille.fr/~hamza.nadifi.etu/seance3/horloge.php?hours=4&minutes=42&seconds=-16

Parametre absent:
https://webtp.fil.univ-lille.fr/~hamza.nadifi.etu/seance3/horloge.php?hours=4&minutes=42&
Ça nous affiche une erreur: "must be of type int, null given"
Fatal error: Uncaught TypeError: angles(): Argument #3 ($seconds) must be of type int, null given, called in /home/l1/hamza.nadifi.etu/public_html/seance3/horloge.php on line 38 and defined in /home/l1/hamza.nadifi.etu/public_html/seance3/lib/fonctions_clock.php:10 Stack trace: #0 /home/l1/hamza.nadifi.etu/public_html/seance3/horloge.php(38): angles() #1 {main} thrown in /home/l1/hamza.nadifi.etu/public_html/seance3/lib/fonctions_clock.php on line 10


Tout a été fait dans le Tp



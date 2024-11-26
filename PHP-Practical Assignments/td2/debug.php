<?php
/**
 * Indique au navigateur qu'il doit afficher du texte ordinaire, sans l'interpréter comme de l'HTML :
*/
header("Content-Type: text/plain;charset=UTF-8");

/**
 * Inclusion du fichier de définitions de fonctions :
 */
require("lib/BookReader.class.php");
require("lib/FileBookReader.class.php");
require_once("lib/fonctionsLivre.php");    // inclusion de fichier

/* Test question 1.1
 */

/* fonction de test
 *  reçoit comme argument un nom de fichier et affiche le résultat de readBook sur ce fichier
 */
function testReadBook($fileName){
    $dl = new FileBookReader($fileName);
    $book = $dl->readBook();
    echo "Résultat pour $fileName \n";
    print_r($book);
}
function testElementBuilder(string $type, string $content, string $class) {
    print_r(elementBuilder($type, $content));
}
function testAuthorsToHtml(string $authors){
    print_r(authorsToHTML($authors));
}
function testCoverToHtml(string $fileName){
    print_r(coverToHtml($fileName));
}
function testPropertyToHTML(string $propName, string $propValue){
    print_r(propertyToHTML($propName, $propValue));
}
function testBookToHTML(string $book){
    print_r(bookToHTML(readBook($book)));
}


/*
 * Lancement des tests :
 */
// une description corretce de livre suivie de la fin de fichier
// doit produire un résultat correct
testReadBook('data/exempleLivre.txt');

// une description de livre,(avec des espaces inutiles) suivie d'une ligne vide puis d'un autre texte à ignorer
// doit produire un résultat correct
testReadBook('data/exempleLivre2.txt');

// une description de livre incorrecte (manque ':' en ligne 2)
// doit déclencher une exception
testReadBook('data/exempleLivreErrone.txt');



//lancement du test pour la fonction elementbuilder
testElementBuilder('p','blablabla');
testElementBuilder('p','blablabla','livre');
testElementBuilder('ul','blablabla');



/**
Voilà ce qui devrait s'afficher :
=================================

Résultat pour data/exempleLivre.txt 
Array
(
    [couverture] => scorpion.jpg
    [titre] => La marque du diable
    [serie] => Le Scorpion
    [auteurs] => Marini - Desberg
    [année] => 2000
    [catégorie] => bandes-dessinées
)
Résultat pour data/exempleLivre2.txt 
Array
(
    [couverture] => scorpion.jpg
    [titre] => La marque du diable
    [serie] => Le Scorpion
    [auteurs] => Marini - Desberg
    [année] => 2000
    [catégorie] => bandes-dessinées
)
<br />
<b>Fatal error</b>:  Uncaught Exception: .....etc ....
 

*/

?>
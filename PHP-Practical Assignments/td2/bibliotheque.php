<?php
 // Inclusion de la bibliothèque de fonctions:
  require("lib/BookReader.class.php");
  require("lib/FileBookReader.class.php");
  require("lib/fonctionsLivre.php");
 
 // Lecture  du fichier:
 $reader = new FileBookReader('data/livres.txt');
 $book = $reader->readBook();
 $bookHTML = libraryToHTML($reader);
 
 // inclusion de la page pageBibliotheque.php:
 require('views/pageBibliotheque.php');
?>
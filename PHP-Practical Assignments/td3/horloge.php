<?php
  
  require("lib/ParmsException.class.php");

  require("lib/fonctions_parms.php");
  require("lib/fonctions_clock.php");
  
/**
 * IMPORTANT : 
 * Ce script n'est qu'une ébauche.
 * 
 * En l'état actuel son fonctionnement n'est pas satisfaisant
 *
 * 
 * Utiliser directement les variable du tableau $_GET peut être dangereux
 *
 * Ce script est à modifier et compléter au cours de l'exercice
 * 
 */

 
  try{
  // hours doit être un entier sans signe
  //  $hours = isset($_GET['hours']) ? $_GET['hours'] : 0;
  $hours = checkUnsignedInt('hours',0);
   
  // minutes doit être un entier sans signe
  //  $minutes = isset($_GET['minutes']) ? $_GET['minutes'] : 0;
  $minutes = checkUnsignedInt('minutes',0);

  // seconds doit être un entier sans signe
  //  $seconds = isset($_GET['seconds']) ? $_GET['seconds'] : 0;
  $seconds = checkUnsignedInt('seconds',0);

  // if (!ctype_digit($seconds)) {
  //   throw new ParmsException("Le paramètre seconds doit être un entier sans signe.");
  // }


  $hands = checkColor('hands','grey');

      
   // la fonction angles est définie dans lib/fonctions_clock.php
   // elle calcule les angles des 3 aiguilles à partir des valeurs fournies
   // le résultat est un tableau de 3 angles associées aux clés 'hours', 'minutes' et 'seconds'
   // par exemple ['hours' => 190, 'minutes' => 270, 'seconds' =>  90]
   $angles = angles($hours, $minutes, $seconds);
 
   // inclusion de la page template :
   require('views/page.php');

  } catch (ParmsException $e){
      require('views/pageErreur.html');
  }
 

 
 
?>
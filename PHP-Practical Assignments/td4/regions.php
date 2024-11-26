<?php
    spl_autoload_register(function($classe){require "lib/$classe.class.php";}); // règle de chargement des classes
    
    const DSN_FILENAME = __DIR__.'/etc/webtp_tw2_dsn.txt';  // nom du fichier contenant les paramètres de connexion à la base
    
    require("lib/fonctions_html.php");
 
    try {
    
        $dl = new DataLayer(DSN_FILENAME);
        $regions = $dl->getRegions();
        $table_regions = regionsToTable($regions);
        require("views/pageRegions.php");
    } catch (ParmsException $e) {
        require "views/pageErreur.php";
    }
   
?>
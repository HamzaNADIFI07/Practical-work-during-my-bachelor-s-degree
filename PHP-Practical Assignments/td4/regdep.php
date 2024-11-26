<?php
    spl_autoload_register(function($classe){require "lib/$classe.class.php";}); // règle de chargement des classes
    
    const DSN_FILENAME = __DIR__.'/etc/webtp_tw2_dsn.txt';  // nom du fichier contenant les paramètres de connexion à la base
    
    require("lib/fonctions_html.php");
    require("lib/fonctions_parms.php");
    setlocale(LC_ALL, 'fr_FR.utf8');

    /** 
        forme 'équivalente' ASCII, sans accents, diacritiques ni ligatures
    */
    function unaccent(string $text) : string {
        return iconv('utf8', 'ascii//TRANSLIT', $text);
    }

    try {        
        $dl = new DataLayer(DSN_FILENAME);
        $regions = $dl->getRegions();
        require("views/pageFormuDep.php");
    } catch (ParmsException $e) {
        require "views/pageErreur.php";
    }
   
?>
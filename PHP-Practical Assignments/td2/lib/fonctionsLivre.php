<?php


function elementBuilder(string $elementType,string  $content,string $elementClass="") : string {
    if ($elementClass!="") {
        return "<".$elementType."class=\"".$elementClass."\">".$content."</".$elementType.">";
    }
	return "<".$elementType.">".$content."</".$elementType.">";
}

function authorsToHTML(string $authors) : string {
    $var1 = explode('-', $authors);
    for($i = 0; $i<count($var1); $i++){
        
        $var1[$i] = trim($var1[$i]);
    }
    return "<span>".implode('</span> <span>', $var1)."</span>";
}

function coverToHTML(string $fileName) : string {
    return "<img src = \"couvertures/$fileName\" alt = \"image de couverture\"";
}

function propertyToHTML(string $propName, string $propValue) : string {
	if ($propName=='titre') {
        return elementBuilder('h2',$propValue,'titre');
    }
    elseif ($propName=='couverture') {
        return elementBuilder('div',coverToHTML($propValue));
    }
    elseif ($propName=='auteurs') {
        return elementBuilder('div',authorsToHTML($propValue),$propName);
    }
    elseif ($propName=='annee') {
        return elementBuilder('time',$propValue);
    }
    else {
        return elementBuilder('div',$propValue);
    }
}

function bookToHTML(array $book) : ?string {
	$var = propertyToHTML('titre', $book['titre'])."\n".propertyToHTML('auteurs', $book['auteurs'])."\n".propertyToHTML('annee', $book['annee'])."\n";
	if(array_key_exists('serie', $book)){
		$var .= propertyToHTML('serie', $book['serie'])."\n".propertyToHTML('categorie', $book['categorie'])."\n";
	}
	else{
		$var .= propertyToHTML('categorie', $book['categorie'])."\n";
	}
	$var = propertyToHTML('couverture', $book['couverture'])."\n".propertyToHTML('description', $var);
	return elementBuilder('article',  $var, 'livre')."\n";
}


// exercice 2

function libraryToHTML(BookReader $datalayer) : string {
    $result = "";
	$book = $datalayer->readBook();
	while ($book != null) {
		$result .= bookToHTML($book);
		$book = $datalayer ->readBook();
	}
	return $result;
}


?>

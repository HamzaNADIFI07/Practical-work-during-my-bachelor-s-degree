<?php
//  créer les fonctions ici 
function afficheVar(int $n , string $s):string{
    return '$n vaut ' . $n . ' et $s vaut ' . $s;
}

function n_parag(string $chaine , int $n):string{
    $resultat="";
    for ($i=0; $i <$n ; $i++) { 
        $resultat = $resultat."<p>".$chaine."</p>\n";
    }
    return $resultat;
}
function paragrapheTronque(string $chaine , $i):string{
    $resultat = "<p>".substr($chaine ,0, $i)."</p>";
    return $resultat;
}
function diminue(string $chaine):string{
    $resultat="";
    for ($i=0; $i <strlen($chaine) ; $i++) { 
        $resultat = $resultat."<p>".substr($chaine , 0 ,strlen($chaine)-$i)."</p>\n";
        
    }
    return $resultat;
}
function diminue1(string $chaine):string{
    $resultat="";
    for ($i=0; $i <strlen($chaine) ; $i++) { 
        $resultat = $resultat."<ul><li>".substr($chaine , 0 ,strlen($chaine)-$i)."</li></ul>";
        
    }
    return $resultat;
}
function multiplication(int $a , int $b):string{
    $result = $a * $b;
    return "<li>" . $a . "*" . $b . "=" . $result . "</li>";
}
function tableMultiplication($c):string{
    $resultat="";
    for ($i=1; $i <10 ; $i++) { 
        $resultat.= "<ul>";
        $resultat.= multiplication($c,$i);
        $resultat.="</ul>";
    }
    return $resultat;
}
function tableMultiplications():string{
    $result = "";
    $result.="<ul>";
    for ($i=1;$i<10;$i++) {
        $result.="<li><ul>";
        for ($j=1;$j<10;$j++) {
            $result.="<li>";
            $result.=multiplication($i,$j);
            $result.="</li>";
        }
        $result.="</ul></li>";
    }
    $result.="</ul>";
    return $result;
}
function ligneEntete():string {
    $a = "<th>*</th>";
    for ($i=1;$i<10;$i++) {
      $a .=  "<th>$i</th>";  
    }
    return "<tr>".$a."</tr>";
  
  }
  function ligneTable(int $b):string {
      $result="<tr>\n<th>$b</th>";
      for ($i=1;$i<10;$i++) {
        $multipl = $b*$i;
        $result.="<td>$multipl</td>";
      }
      $result.="</tr>\n";
    return $result;
  }
  function tableauMult ():string {
    $result = "";
    $result.="<table id =\"multiplications\">\n";
    $result.=ligneEntete();
    for ($i=1;$i<10;$i++) {
      $result.=ligneTable($i);
    }
    $result.="</table>\n";
    return $result;
  }
  function q8(string $s): string {
    $result ="";
    $res = explode("+",$s);
    foreach ($res as $d) {
      $result.="<p>".trim($d)."</p>\n";
    }
    return $result;
    
  }
  function enSpan(string $s): string {
    return "<span>".implode("</span><span>", explode("-",$s) )."</span>";
    
  }


?>
set_include_path('..'.PATH_SEPARATOR);
require_once('lib/common_service.php');
require_once('lib/initDataLayer.php');
require('lib/fonctions_parms.php');

try{
    $territoire = checkUnsignedInt('territoire', NULL, false);
  $territoires = $data->getCommunes($territoire);
  
  produceResult($territoires);
  //produceResult([5,10,1]);
}
catch (PDOException $e){
    produceError($e->getMessage());
}


?>
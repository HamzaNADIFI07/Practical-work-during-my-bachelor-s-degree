<?php
class FileBookReader implements BookReader{
	
	private $file; // file resource
	
	function __construct(string $fileName){
		$this->file = fopen($fileName,'r');
	}
	

	/*function readBook() : ?array {
		$line = fgets($this->file);
		$att = array();

		while ($line && trim($line) == ""){
			$line = fgets($this->file);
		}

		while($line && trim($line) != ""){
			$def = explode(":", $line);

			if (count($def) == 1){
				throw new Exception("absence de :");
			}

			$att[trim($def[0])] = trim($def[1]);
			$line = fgets($this->file);
		}

		if (count($att) == 0){
			return null;
		}

		return $att;
	}
	*/
	
	
	
}

?>

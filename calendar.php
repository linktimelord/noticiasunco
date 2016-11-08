<?php
        header('Content-Type: application/json');
		$tux = "";
        if(isset($_GET['param'])){
			$param = $_GET['param'];	
			if($param == 1) {
				$tux = calendarioJson();
			} 
        }
		echo ($tux);
		
		function calendarioJson() {
	//Llamo y leo el ICS
 	$fp = fopen("ics/basic5.ics", "r"); 
	$temp = fread($fp, filesize("ics/basic5.ics"));
	//Ver si se necesita nl2br
	$salida = icsAJson(json_encode(nl2br($temp)));
	//Este es el Json Final
	return ('[' . $salida . ']');
}
function icsAJson($temp){
	//Primera parte del cambio de formato de ICS a JSON
	$original  = array("BEGIN:VCALENDAR", "END:VCALENDAR", "PRODID:", "BEGIN:VEVENT", "END:VEVENT", "VERSION:", "CALSCALE:",
	"METHOD:", "X-WR-CALNAME:", "X-WR-TIMEZONE:", "X-WR-CALDESC:", "DTSTART:", "DTEND:", "DTSTAMP:", "UID:", "CREATED:", "DESCRIPTION:",
	"LAST-MODIFIED:", "LOCATION:", "SEQUENCE:", "STATUS:", "SUMMARY:", "TRANSP:TRANSPARENT", "TRANSP:OPAQUE", "X-GOOGLE-HANGOUT:" , "DTSTART;VALUE=DATE:", "DTEND;VALUE=DATE:",
	'\n', '\r', '<br />', '<br \/>', '\/', '"{"VCALENDAR');
	$cambiadas = array('{"VCALENDAR":[{', '}]}', '"PRODID":"', ', "VEVENT":[', ']', '", "VERSION": "', '", "CALSCALE": "', '", "METHOD":"',
	'", "X-WR-CALNAME":"', '", "X-WR-TIMEZONE":"' , '", "X-WR-CALDESC":""', '{"DTSTART":"', '", "DTEND":"', '", "DTSTAMP":"', '", "UID":"',
	'", "CREATED":"', '", "DESCRIPTION":"', '", "LAST-MODIFIED":"', '", "LOCATION":"', '", "SEQUENCE":"', '", "STATUS":"', '", "SUMMARY":"',
	'", "TRANSP":"TRANSPARENT"}', '", "TRANSP":"OPAQUE"}', '", "X-GOOGLE-HANGOUT":"' , '{"DTSTART":"', '", "DTEND":"',
	'', '', '', '', '/', '{"VCALENDAR');
	$newphrase = trim(str_replace($original, $cambiadas, $temp));
	//Busco los Eventos del calendario
	$busco   = '"VEVENT"';
	$pos = strpos($newphrase, $busco);
	$primerParte = "";
	$segundaParte = "";
	$terceraParte = "]}]}";
	$salida = "";
	if ($pos !== false) {
		//Al encontrar al primer Evento separo el texto en 2 partes, la primera con lo anterior a este
		$primerParte = (substr($newphrase, 0, $pos)) . '"VEVENT":[';
		//La segunda parte contendra los Eventos a medio camino de estar en formato JSON
		$temp = substr($newphrase, $pos, ((strlen($newphrase)-5) - $pos));
		//Cambio esta segunda parte para darle el formato que corresponde
		$original  = array('"VEVENT":[', "]");
		$cambiadas = array('', '');
		$segundaParte = trim(str_replace($original, $cambiadas, $temp));
		//Uno las 3, Inicio, Eventos y el Final que contiene los cierres de llaves necesarios
		$salida = $primerParte . $segundaParte . $terceraParte;		
	}
	return ($salida);
}

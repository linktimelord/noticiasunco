<?php

/* Métodos para cargar noticias rss en bd utilizando postgres y PHP */
//header("Access-Control-Allow-Origin: *");
include 'conexiondb.php';

function cargarFeed() {
    $urls_rss = consulta("SELECT * FROM fuente;","dbname = FeedUncoma");
    while ($row = pg_fetch_row($urls_rss))  {
        $rss_tags = array(
            'title',
            'link',
            'description',
            'author',
            'pubDate'
        );
        $rss_item_tag = 'item';
        $rss_url = $row[2];
        $rssfeed = rss_to_array($rss_item_tag, $rss_tags, $rss_url);
 
        foreach ($rssfeed AS $arreglo) {
            $titulo = $arreglo['title'];
            $copete = html_entity_decode(strip_tags($arreglo['description']));
            $link = $arreglo['link'];
            $fecha = strftime("%Y-%m-%d %H:%M:%S", strtotime($arreglo['pubDate']));
            $autor = $arreglo['author'];
            $prueba= consulta("SELECT id_noticia FROM noticia WHERE titulo ='$titulo' and fecha='$fecha' and id_fuente=$row[0];", "dbname = FeedUncoma");
            $row2=pg_fetch_row($prueba);
            if(empty($row2[0])){
                echo $row2[0];
                consulta("INSERT INTO noticia (titulo, copete, link, fecha,  autor, id_fuente) VALUES ( '$titulo', '$copete', '$link', '$fecha', '$autor', $row[0])", $dbname="dbname = FeedUncoma");
            }

            //consulta("INSERT INTO noticia (titulo, copete, link, fecha,  autor, id_fuente) VALUES ( '$titulo', '$copete', '$link', '$fecha', '$autor', $row[0])", $dbname="dbname = Feed_UNCo");
        }
    }
    pg_free_result($urls_rss);
}

/*
 * Pasa los rss obtenidos a un arreglo
 */

function rss_to_array($tag, $array, $url) {
    $doc = new DOMDocument();
    $doc->load($url);
    $rss_array = array();
    $items = array();
    foreach ($doc->getElementsByTagName($tag) AS $node) {
        foreach ($array AS $key => $value) {
            if ($value !== 'description') {
                $items[$value] = $node->getElementsByTagName($value)->item(0)->nodeValue;
            } else {
                $cadena = strip_tags($node->getElementsByTagName($value)->item(0)->nodeValue, '<span><div>');
                $items[$value] = $cadena;
            }
        }
        array_push($rss_array, $items);
    }
    return $rss_array;
}

/*
 * Muestra los 3 últimos rss obtenidos de cada página
 */

function mostrarFeed() {
    $muestra = "";
    $fuentes = consulta("SELECT id_fuente, nombre, url, pagina FROM fuente;", $dbname="dbname = FeedUncoma");
    while ($row = pg_fetch_row($fuentes)) {
        $noticias = consulta("SELECT n.id_noticia, n.titulo, n.copete, 
         n.link, n.fecha, n.autor FROM noticia as n WHERE n.id_fuente=" . $row[0] . " ORDER BY  n.id_noticia DESC LIMIT  3", $dbname="dbname = FeedUncoma");
        $muestra.="<br/><h2><a href='" . $row[3] . "'>" . $row[1] . "</a></h2>";
        while ($row1 = pg_fetch_row($noticias)) {
            $muestra.= "<h4>" . $row1[1] . "</h4><p>" . $row1[2] . "<br>Autor:" . $row1[5] . "</p><a href='" . $row1[3] . "'>Ver más</a> <hr/>";
        }
        pg_free_result($noticias);
		$muestra .= "<div style='text-align: center;'><img style='width: 50%; height: 20px; padding: 12px 15px 0px 15px;' src='./imgs/loader.gif' alt='Inicio' /></div>";
    }
    pg_free_result($fuentes);
    echo $muestra;
}

function mostrarNoticias() {
    $muestra = "";
    $fuentes = consulta("SELECT id_fuente, nombre, url, pagina FROM fuente;", $dbname="dbname = FeedUncoma");
	$contador = 1;
    while ($row = pg_fetch_row($fuentes)) {
		
        $noticias = consulta("SELECT n.id_noticia, n.titulo, n.copete, n.link, n.fecha, n.autor, n.imagen FROM noticia as n WHERE n.id_fuente=" . $row[0] . " ORDER BY  n.id_noticia DESC LIMIT  3", $dbname="dbname = FeedUncoma");
        // Escribe un h2 con el titulo de la fuente y un enlace a ella
		$muestra.="<br/><h2 style='text-align: center'><a href='" . $row[3] . "'>" . $row[1] . "</a></h2>";
		
		// Por cada noticia, la agrega a muestra
        while ($row1 = pg_fetch_row($noticias)) {
			$muestra.= "<div class='media row'>";
			$tituloX = "<h4 class='media-heading'>" . $row1[1]. "</h4>";
			$resumenX = $row1[2];
			$autorX = "Autor: " . $row1[5];
			$verMasX = "<a href='" . $row1[3] . "'>Ver más</a>";
			$imaTemp = trim($row1[6]);
			// Deslockear luego $imagenX = "<a href='" . "./img/not1.jpg" . "' class='thumbnail'> <img src='" . "./img/not1.jpg" . "' alt='imagen'>ampliar</a>";
			
			
			$noticiaX = $tituloX . $resumenX . "<br>". $autorX . "<br>" . $verMasX;
			
			if($imaTemp != ""){
				$imagenX = "<a href='" . $row1[3] . "' class='thumbnail'> <img src='" . $imaTemp . "' alt='". $row1[1] ."' title='". $row1[1] ."'>Ir a la Noticia</a>";
			}else{
				$imagenX = "<a href='" . "#" . "' class='thumbnail'> <img src='" . "./img/notImage.jpg" . "' alt='". $row1[1] ."' title='". $row1[1] ."'></a>";
			}
			
			if($contador == 1){
				$contador = 0;
				$muestra .= "<div class='col-xs-2 col-sm-1 col-lg-1'></div> <div class='col-xs-8 col-sm-3 col-lg-2'>" . $imagenX . "</div> <div class='col-xs-12 col-sm-7 col-lg-8'>" . $noticiaX . "</div><div class='col-xs-1 col-sm-1 col-lg-1'></div>";
			}else{
				$muestra .= "<div class='col-xs-2 col-sm-1 col-lg-1'></div><div class='col-xs-12 col-sm-7 col-lg-8'>" . $noticiaX . "</div><div class='col-xs-2 col-md-0'></div><div style='text-align:right;' class='col-xs-8 col-sm-3 col-lg-2'>" . $imagenX . "</div><div class='col-xs-12 col-sm-1 col-lg-1'></div>";
				$contador = 1;
			}
			
            
			$muestra.= "</div><hr/>";
        }
        pg_free_result($noticias);
		$muestra .= "<div style='text-align: center;'><img style='width: 50%; height: 20px; padding: 12px 15px 0px 15px;' src='./imgs/loader.gif' alt='Inicio' /></div>";
    }
    pg_free_result($fuentes);
    echo $muestra;
}


function mostrarNoticias2() {
    $muestra = "";
	$todaslasnoticias = consulta("Select o.*, n.id_noticia, n.titulo, n.copete, n.link, n.fecha, n.autor, n.imagen, n.id_fuente, f.id_fuente, f.nombre, f.url, f.pagina from ordenar() as o  INNER JOIN noticia as n ON (n.link = o.link) INNER JOIN fuente as f ON (n.id_fuente = f.id_fuente) order by o.fecha desc", $dbname="dbname = FeedUncoma");
    //$fuentes = consulta("Select o.*, n.id_noticia, n.titulo, n.copete, n.link, n.fecha, n.autor, n.imagen, n.id_fuente, f.id_fuente, f.nombre, f.url, f.pagina from ordenar() as o  INNER JOIN noticia as n ON (n.link = o.link) INNER JOIN fuente as f ON (n.id_fuente = f.id_fuente) order by o.fecha desc", $dbname="dbname = FeedUncoma");
	$contador = 1;
    while ($row = pg_fetch_row($todaslasnoticias)) {
		//$noticias = consulta("SELECT n.id_noticia, n.titulo, n.copete, n.link, n.fecha, n.autor, n.imagen, n.id_fuente, f.id_fuente, f.nombre, f.url, f.pagina FROM noticia as n INNER JOIN fuente as f ON (n.id_fuente = f.id_fuente) WHERE n.id_fuente=1 ORDER BY  n.fecha DESC LIMIT 3", $dbname="dbname = FeedUncoma");
		
			//agregar cada row1 a un array, luego ordenarlo por fecha y luego mostrarlo
			//$row1 = pg_fetch_row($noticias);
			
			$muestra.= "<div class='media row'>";
			$tituloX = "<h4 class='media-heading'>" . $row[2]. "</h4>";
			$resumenX = $row[3];
			if(trim($row[11]) != ""){
				$autorX = "Autor: " . $row[11];
			}else{
				$autorX = "";
			}
			
			
			$publica = "<div class='publica'>-" . $row[0] . "-</div>";
			
			
			$verMasX = "<a href='" . $row[4] . "'>Ver más</a>";
			$imaTemp = trim($row[12]);
			// Deslockear luego $imagenX = "<a href='" . "./img/not1.jpg" . "' class='thumbnail'> <img src='" . "./img/not1.jpg" . "' alt='imagen'>ampliar</a>";
			
			
			$noticiaX = $tituloX . $publica . $resumenX . "<br>". $autorX . "<br>" . $verMasX;
			
			if($imaTemp != ""){
				$imagenX = "<a href='" . $row[4] . "' class='thumbnail'> <img src='" . $imaTemp . "' alt='". $row[2] ."' title='". $row[2] ."'>Ir a la Noticia</a>";
			}else{
				switch(trim($row[0])){
					case "FAEA": $imagenX = "<a href='" . "#" . "' class='thumbnail'> <img src='" . "./imgs/iconfaea.png" . "' alt='". $row[2] ."' title='". $row[2] ."'></a>";
							 break;
					case "Facultad de Informática": $imagenX = "<a href='" . "#" . "' class='thumbnail'> <img src='" . "./imgs/iconfai.png" . "' alt='". $row[2] ."' title='". $row[2] ."'></a>";
							 break;
					case "Facultad de Ciencias del Ambiente y la Salud": $imagenX = "<a href='" . "#" . "' class='thumbnail'> <img src='" . "./imgs/iconfacias.png" . "' alt='". $row[2] ."' title='". $row[2] ."'></a>";
							 break;
					case "Facultad de Humanidades": $imagenX = "<a href='" . "#" . "' class='thumbnail'> <img src='" . "./imgs/iconfahu.png" . "' alt='". $row[2] ."' title='". $row[2] ."'></a>";
							 break;
					case "Facultad de Ciencias Médicas": $imagenX = "<a href='" . "#" . "' class='thumbnail'> <img src='" . "./imgs/iconfacime.png" . "' alt='". $row[2] ."' title='". $row[2] ."'></a>";
							 break;
					case "Facultad de Lenguas": $imagenX = "<a href='" . "#" . "' class='thumbnail'> <img src='" . "./imgs/iconfadel.png" . "' alt='". $row[2] ."' title='". $row[2] ."'></a>";
							 break;
					default: $imagenX = "<a href='" . "#" . "' class='thumbnail'> <img src='" . "./imgs/iconnoicon.png" . "' alt='". $row[2] ."' title='". $row[0] ."'></a>";
							 break;
					
				}
			}
			
			if($contador == 1){
				$contador = 0;
				$muestra .= "<div class='col-xs-2 col-sm-1 col-lg-1'></div> <div class='col-xs-8 col-sm-3 col-lg-2'>" . $imagenX . "</div> <div class='col-xs-12 col-sm-7 col-lg-8'>" . $noticiaX . "</div><div class='col-xs-1 col-sm-1 col-lg-1'></div>";
			}else{
				$muestra .= "<div class='col-xs-2 col-sm-1 col-lg-1'></div><div class='col-xs-12 col-sm-7 col-lg-8'>" . $noticiaX . "</div><div class='col-xs-2 col-md-0'></div><div style='text-align:right;' class='col-xs-8 col-sm-3 col-lg-2'>" . $imagenX . "</div><div class='col-xs-12 col-sm-1 col-lg-1'></div>";
				$contador = 1;
			}
			
            
			$muestra.= "</div><hr/>";
		
    }
	//$muestra .= "<div style='text-align: center;'><img style='width: 50%; height: 20px; padding: 12px 15px 0px 15px;' src='./imgs/loader.gif' alt='Inicio' /></div>";
    pg_free_result($todaslasnoticias);
    echo $muestra;
}

/*
 * Devuelve la consulta de la bd en JSON
 */

function consultaJson() {
    $json = array();
    $fuentes = consulta("SELECT id_fuente, nombre, url, pagina FROM fuente;", $dbname="dbname = FeedUncoma");
    $i = 0;
    while ($row = pg_fetch_array($fuentes)) {
        //print_r($row);
        $json[$i] = $row;
        $j = 0;
        $noticias = consulta("SELECT n.id_noticia, n.titulo, n.copete, n.link, n.fecha, n.autor FROM noticia as n WHERE n.id_fuente=" . $row['id_fuente'] . " ORDER BY  n.id_noticia DESC LIMIT  3", $dbname="dbname = FeedUncoma");
        while ($row2 = pg_fetch_array($noticias)) {
//            print_r($row2[1]."\n");
            $json[$i][$j] = $row2;
            //print_r($json[$i]);
            $j++;
        }
        pg_free_result($noticias);
        $i++;
    }
    //print_r(json_encode($json));
    pg_free_result($fuentes);
    return json_encode($json);
 
}

function generarJson() {
    
    $fuentes=consulta("SELECT id_fuente, nombre, url, pagina FROM fuente;", $dbname="dbname = FeedUncoma");
    $arr =array('fuentes'=> array());
    $i=0;
    while($row=  pg_fetch_row($fuentes)){
        $arr['fuentes'][$i]=array('nombre' => $row[1], 'pagina'=>$row[3], 'noticias'=>array()) ;
        $noticias=consulta("SELECT n.id_noticia, n.titulo, n.copete, n.link, n.fecha, n.autor FROM noticia as n WHERE n.id_fuente=".$row[0]." ORDER BY  n.fecha DESC LIMIT  3", $dbname="dbname = FeedUncoma");
        $j=0;
        while($row2 = pg_fetch_row($noticias)){
            $arr['fuentes'][$i]['noticias'][$j]=array('titulo'=>$row2[1], 'copete'=>html_entity_decode($row2[2]), 'url'=>$row2[3], 'fecha'=>$row2[4], 'autor'=>$row2[5]);
            $j++;
        }
        pg_free_result($noticias);
        $i++;
    }
//    $arr = array('fuentes' => array(array("nombre" => "prensa", "url" => 2, "noticias" => array(
//             array("titulo" => "titulo1", "copete" => "cop", "url" => "das"),array("titulo" => "titulo1", "copete" => "cop", "url" => "das"))),
//        array("nombre" => "fiuncoma", "url" => 2, "noticias" => array(
//            array("titulo" => "titulo1", "copete" => "cop", "url" => "das"), array("titulo" => "titulo1", "copete" => "cop", "url" => "das")))));

    echo json_encode($arr);
//   
}

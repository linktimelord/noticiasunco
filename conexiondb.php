<?php
//header("Access-Control-Allow-Origin: *");
 function consulta($query, $dbname="dbname = 'libro_unco'"){
    if($dbname=="dbname = 'libro_unco'"){
        //echo "entro en ".$dbname;
        $cadena= " host='http://conu.fi.uncoma.edu.ar/phppgadmin/' port='5432' dbname='FeedUncoma' user='postgres' password='Conu.5921' ";
    }
    else{
        //echo "entro en ".$dbname;
        $cadena= " host='http://conu.fi.uncoma.edu.ar/phppgadmin/' port='5432' dbname='FeedUncoma' user='postgres' password='Conu.5921' ";
    }
    $dbcon= pg_connect($cadena);
   // pg_set_client_encoding($dbcon, $coding);
    $result = pg_query($dbcon,$query);
    if(!$result){
       //echo "Error no funciona la consulta \n".$query;
    }
    else {
        pg_close($dbcon);
          return $result;
       }
 }

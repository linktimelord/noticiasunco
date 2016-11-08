<?php
//header("Access-Control-Allow-Origin: *");
 function consulta($query, $dbname="dbname = 'libro_unco'"){
    if($dbname=="dbname = 'libro_unco'"){
        //echo "entro en ".$dbname;
        $cadena= " host='localhost' port='5432' dbname='FeedUncoma' user='postgres' password='1234' ";
    }
    else{
        //echo "entro en ".$dbname;
        $cadena= " host='localhost' port='5432' dbname='FeedUncoma' user='postgres' password='1234' ";
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
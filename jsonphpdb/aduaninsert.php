<?php 
header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include "connect.php";
// TAMBAH ADUAN
	$_POST = json_decode(file_get_contents('php://input'), true);
    	$deskripsi = $_POST['deskripsi'];
        $jenisaduan = $_POST['jenisaduan'];
        $latitude = $_POST['latitude'];
        $longitude = $_POST['longitude'];
	//$obj = json_decode($json);
  
        $sql = "INSERT INTO aduan (deskripsi, jenisaduan, 
            latitude,longitude,tarikhaduan)
            VALUES ('$deskripsi','$jenisaduan',
                '$latitude','$longitude',
                '".date("Y-m-d")."')";//date ISO format
	//echo $sql; 
	//echo file_get_contents('php://input');
        $result = mysqli_query($db,$sql);
        if ($result==true){
            echo '{"success":"true","error":"null"}' ;
                //echo $sql;
                //echo '"}';
  //success message sent back to mobile app
            
        }
	    else {
	        //echo "error_".mysqli_error($db);
	        echo '{"success":"false", "error":"'.mysqli_error($db).'"}';
		    //echo "error";//error message sent back to mobile app
	        
	    }
        //$conn->close();    
    
    ?>
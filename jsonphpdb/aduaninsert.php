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
    	$latitude = $_POST['latitude'];
    	$longitude = $_POST['longitude'];
        $jenisaduan = $_POST['jenisaduan'];
	//$obj = json_decode($json);
  
        $sql = "INSERT INTO aduan (deskripsi, latitude, longitude,jenisaduan, tarikhaduan)
         VALUES ('$deskripsi' , '$latitude', '$longitude','$jenisaduan','".date("Y-m-d")."')";
	//echo $sql; 
	//echo file_get_contents('php://input');
        $result = mysqli_query($db,$sql);
        if ($result==true){
            echo '{"success":"true","error":"' ;
                echo $sql;
                echo '"}';
  //success message sent back to mobile app
            
        }
	    else {
	        //echo "error_".mysqli_error($db);
	        echo '{"success":"false", "error":"'.mysqli_error($db).'"}';
		    //echo "error";//error message sent back to mobile app
	        
	    }
        //$conn->close();    
    
    ?>
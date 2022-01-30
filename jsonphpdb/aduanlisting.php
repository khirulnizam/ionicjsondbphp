<?php 
header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
	header("Access-Control-Allow-Methods: GET");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include "connect.php";

//filename aduanlisting.php for ionic json db connectivity

//keyword

if(!isset($_GET['key'])){
	$key=null;
}
else {
	$key=$_GET['key'];
}

//generate JSON from table

$aduanlist= array();
$response["aduanlist"]=array();

$sql="SELECT id,deskripsi,jenisaduan, tarikhaduan
FROM aduan
WHERE deskripsi  LIKE '%$key%' ";

//run query

$rs=mysqli_query($db,$sql);

if($rs==false){

	echo mysqli_error($rs);

}



//no record found

if (mysqli_num_rows($rs)==0){

}

else{//found some records


	while($rec=mysqli_fetch_array($rs)){

		//capture one record

		$aduanlist=array();

		$aduanlist["id"] = $rec["id"];

		$aduanlist["deskripsi"] = $rec["deskripsi"];

		$aduanlist["jenisaduan"] = $rec["jenisaduan"];

		$aduanlist["tarikhaduan"] = $rec["tarikhaduan"];

		//push to response

		array_push($response["aduanlist"], $aduanlist);

	}//end while
	

}//end found records
echo json_encode($response,JSON_PRETTY_PRINT);
//echo json_encode($response, JSON_PRETTY_PRINT); 
//print JSON format with beautification

?>
<?php
//permit access dari ionic client
header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
	header("Access-Control-Allow-Methods: GET");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

//sahkan_user.php
include "connect.php";
if(isset($_POST["email"]) && isset($_POST["password"])){
    $userinfo= array();
    $response["userinfo"]=array();

    $email=$_POST["email"];
    $password=$_POST["password"];

    $sql="SELECT * FROM aduan_users
        WHERE email='$email'";

    $rs=mysqli_query($db, $sql);
    if(mysqli_num_rows($rs)==1){

        //semak password match?
        $rec=mysqli_fetch_array($rs);
        if(password_verify($password,$rec['password'])){
            $namapenuh=$rec['namapenuh'];
            $userinfo=array();
            $userinfo["id"] = $rec["id"];
            $userinfo["email"] = $rec["email"];
            $userinfo["namapenuh"] = $rec["namapenuh"];
            $userinfo["levelpengguna"] = $rec["levelpengguna"];

            //push to response 
            array_push($response["userinfo"], $userinfo);
            echo json_encode($response,JSON_PRETTY_PRINT);
            //echo "Selamat datang pengguna $namapenuh berjaya";
        }else{
            echo "Password salah";
        }
        
    }else{
        echo "Pengguna tidak wujud";
    }
}
?>
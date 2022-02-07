<form method="post" action="">
    Email <input name="email" type="text"
    placeholder="email">
    Password <input name="password" type="password"
    placeholder="password">
    Nama penuh <input name="namapenuh" type="text"
    placeholder="namapenuh">
    Nama penuh <input name="levelpengguna" type="text"
    placeholder="levelpengguna">

    <input type="submit">

</form>

<?php
include "connect.php";
if(isset($_POST["email"]) && isset($_POST["password"])){

    $email=$_POST["email"];
    $password=$_POST["password"];
    $namapenuh=$_POST["namapenuh"];
    $levelpengguna=$_POST["levelpengguna"];

    $sql="Insert INTO aduan_users (email,password,namapenuh,levelpengguna)
        VALUES ('$email','".password_hash($password, PASSWORD_DEFAULT)."','$namapenuh','$levelpengguna');";

    $rs=mysqli_query($db, $sql);
    if($rs==true){
        echo "Pendaftran pengguna $namapenuh berjaya";
    }else{
        echo mysqli_error($db);
    }
}
?>
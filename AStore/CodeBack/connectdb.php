<?php

    // $host = "localhost";
    // // $user = "root";
    // // $pass = "";
    // $user = "h514771_birdfire";
    // $pass = "BirdFire45";
    // $db = "h514771_birdfire";
    $host = "localhost";
    $user = "cp242224_Root01";
    $pass = "Root01";
    $db = "cp242224_2closeTest2";

    $connect = mysqli_connect($host,$user,$pass,$db);
    $connect ->query("set names utf8");
    if(!$connect){
        echo "<script> alert('เชื่อมต่อDatabaseไม่ได้');</script>";
    }

?>
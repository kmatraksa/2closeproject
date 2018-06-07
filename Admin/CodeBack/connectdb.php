<?php

    $host = "localhost";
    // $user = "root";
    // $pass = "";
    $user = "root";
    $pass = "";
    $db = "project";

    $connect = mysqli_connect($host,$user,$pass,$db);
    $connect ->query("set names utf8");
    if(!$connect){
        echo "<script> alert('เชื่อมต่อDatabaseไม่ได้');</script>";
    }

?>
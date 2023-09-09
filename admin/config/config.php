<?php
     //db local - remote
     //$mysqli = new mysqli("kingdomvn.store","u950735164_perfume","Kingdomvn@123","u950735164_perfume");
     //$mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME); 

     //db product - remote
     $mysqli = new mysqli("sellingsavvy.store","u950735164_sellingsavvy","A1doquochung@","u950735164_sellingsavvy");

    //free db
     //$mysqli = new mysqli("ble5mmo2o5v9oouq.cbetxkdyhwsb.us-east-1.rds.amazonaws.com","z5t36fydvhu88i39","qe3ed1us16l5u4wn","t65c51c1bo351q6m");
    
     //local db
     //$mysqli = new mysqli("localhost","root","","dbperfume","3344");

    // Check connection
    if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli->connect_error;
    exit();
}

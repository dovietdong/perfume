<?php
    $mysqli = new mysqli("ble5mmo2o5v9oouq.cbetxkdyhwsb.us-east-1.rds.amazonaws.com","z5t36fydvhu88i39","qe3ed1us16l5u4wn","t65c51c1bo351q6m");
    //$mysqli = new mysqli("localhost:3344","root","","dbperfume");
    // Check connection
    if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli->connect_error;
    exit();
}

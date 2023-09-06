<?php
    $mysqli = new mysqli("localhost","u950735164_perfume","Kingdomvn@123","u950735164_perfume");

    // Check connection
    if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli->connect_error;
    exit();
}

<?php
$servername = "db";
$username = "gallary_user";
$password = "your_strong_user_password";
$dbname = "gallary_cafe_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?><?php
$servername = "db";
$username = "gallary_user";
$password = "your_strong_user_password";
$dbname = "gallary_cafe_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

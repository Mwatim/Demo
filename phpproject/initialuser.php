<?php
$servername = "localhost";
$username = "php_user";
$password = "xkP1s11Nc£7&";
$dbname = "phpdb";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$hashed_password = password_hash('admin123', PASSWORD_DEFAULT);
$sql = "INSERT INTO users (username, password) VALUES ('admin', '$hashed_password')";

if ($conn->query($sql) === TRUE) {
    echo "User created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>

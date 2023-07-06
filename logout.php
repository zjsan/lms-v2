<?php
session_destroy();
header('location:index.php');
mysqli_query($conn,"INSERT INTO user_log(logout_Date) values(NOW()) where user_id = '$session_id'")or die(mysqli_error());
exit();
?>
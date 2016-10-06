<!DOCTYPE html>
<html>
<head>
<title><?php echo "$title" ?></title>
</head>
<body>
<FONT size="4" color="white">
<NAV align="right">
<A HREF="index.php">Home</A>&nbsp&nbsp&nbsp
<A HREF="help.php">Help</A>&nbsp&nbsp&nbsp
<?php  
session_start();
if(isset($_SESSION['user_info']))
	echo 'Welcome <A HREF="login.php"> '.$_SESSION['user_info'].'</a>';
else
	echo '<A HREF="register.php">Login/Register</A>';
?>
</FONT></NAV>
</body>
</html>
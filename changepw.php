<html>
<head>
<title>Change password</title>
<link rel="stylesheet" href="css/main.css">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,500' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/main.js"></script>
<style type="text/css">
	a:link {color: #ffffff}
	a:visited {color: #ffffff}
	a:hover {color: #ffffff}
	a:active {color: #ffffff}
</style>
</head>
<body>
<?php include("header.php"); ?>
<form id="login-form" class="login-form" name="form1" method="post" action="changepw.php">
	        <div id="form-content">
	            <div class="welcome">
					Do you want to change your password?
					<br />
					Email ID: <input type="text" name="email"><br/>
					Current password: <input type="password" name="opw"><br/>
					New password: <input type="password" name="npw"><br/><br/>
					<center><input type="submit" name="changepw" value="Change password"></center>
				</div>	
	        </div>
	    </form>
</body>
</html>
<?php
$connect = mysql_connect("localhost","root","");
mysql_select_db("foodies") or die("couldn't find database");
if (isset($_POST['changepw'])){
$email=$_POST['email'];
$opw=$_POST['opw'];
$npw=$_POST['npw'];
$query = mysql_query("select * from php_users_login where email='$email'");
$numrows = mysql_num_rows($query);
if($numrows!=0)
{
while($row = mysql_fetch_assoc($query))
{
$dbemail = $row['email'];
$dbpassword = $row['password'];
}
if($dbemail==$email&&$opw==$dbpassword)
{
		$sql2 ="UPDATE 	php_users_login SET password= '$npw' WHERE email= '$dbemail';";
		if(mysql_query($sql2))
		{  
			echo "<script type='text/javascript'>alert('Password changed successfully');</script>";
		}
		else
		{  
			echo "<script type='text/javascript'>alert('Error');</script>"; 
		}  
}
else
echo "<script type='text/javascript'>alert('Incorrect password');</script>";
}
else
echo "<script type='text/javascript'>alert('User does not exist');</script>";
}
?>
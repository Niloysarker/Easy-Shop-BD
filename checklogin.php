<?php 
session_start();
include 'connection.php';
if (isset($_POST['user_name']) && isset($_POST['user_password']))
{
	$username = $_POST['user_name'];
	$password = $_POST['user_password'];	
   $query = "SELECT * FROM users WHERE username='$username' and password='$password'";
	$result = mysqli_query($conn,$query) or die(mysqli_error($conn));
	$count = mysqli_num_rows($result);
	if (mysqli_num_rows($result) > 0) 
	{
		while($row = mysqli_fetch_assoc($result)) 
		{
			$id = $row['id'];
		}
	}			
	if ($count == 1)
	{
		$_SESSION['username'] = $username;
		$_SESSION['id'] = $id;		
	}	
	else
	{
		echo "Error in login";
		echo '<br><a href="login.php">Go Back To Login</a>';
	}
}
if (isset($_SESSION['username']))
{
		$_SESSION['id'] = $id;
		#include 'data.php';
		header('Location:index.php');
}
?>
	
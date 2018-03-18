<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html> 
<head>
<meta charset="ISO-8859-1">
<title>She Takes On The World-login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/Copyoflogin.css" rel="stylesheet" type="text/css">
<!-- <link href="css/login.css" rel="stylesheet" type="text/css"> -->
<style>
		@import url('https://fonts.googleapis.com/css?family=Raleway'); 
		@import url('https://fonts.googleapis.com/css?family=Courgette');
		@import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css');
</style>
</head>
<body>
<div class="background">
	<div class="header">
		<div class="logo">
			<img alt="logo" src="imgs/logo.jpg">
		</div>
		<div class="title">
			<h1>She Takes On The World</h1>
		</div>
	</div>
	
	<div class="navigationBar">
		<ul>
		<li><a href="home1.html">Home</a></li>    
		<li><a href="about.html">About</a></li>    
		<li><a href="contact.html">Contact</a></li>    
		</ul>
	</div>
	
	<div class="heading">
			<h1>Log-In</h1>
	</div>
	
	<div class="container">
	<div id="error_login" style=" text-align:center;font-family : Raleway,sans-serif;">
			<h2 style="color : red;">ERROR</h2>
			<h3>Wrong username or password..</h3>
	</div>
	<div class="formBox">
		<form class="loginForm" action="logged_in_home.html" method="post">
		<label>Username :
		 	<input type="text" placeholder="Enter username" autofocus required> </label>
		 	<br>
		<label>Password : 
			<input type="password" placeholder="Enter password" required> </label>
			<br>
		<input type="submit" value="Login">	
		<div style="font-size:20px; text-align: center;">
					<a href="signup.html">Don't have an Account?</a> &emsp;&emsp;
					<a href="signup.html">Forgot Password</a>
				</div>
		</form>
	</div>
	</div>
	
	<div class="footer">
		<a href="">Help</a>
	</div>
</div>
</body>
</html>
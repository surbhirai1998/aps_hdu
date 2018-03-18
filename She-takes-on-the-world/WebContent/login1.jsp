<!DOCTYPE html>
<html>
<head> 
<meta charset="ISO-8859-1">
<title>login-She Takes On The World</title>
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
	<div class="formBox" >
		<form class="loginForm" action="LoginController" method="post">
		<label>User name :
		 	<input type="text" placeholder="Enter email id" name="user_name" autofocus required> </label>
		 	<br>
		<label>Password : 
			<input type="password" placeholder="Enter password" name="user_password" required> </label>
			<br>
		<input type="submit" value="Login">	
		<div style="font-size:20px; text-align: center;">
					<a href="signup.jsp">Don't have an Account?</a> &emsp;&emsp;
					<a href="signup.jsp">Forgot Password</a>
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
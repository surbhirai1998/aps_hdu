<!DOCTYPE html>
<html> 
<head>
<meta charset="ISO-8859-1">
<title>Doctor-signup</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/Copyoflogin.css" rel="stylesheet" type="text/css">
<style>
@import url('https://fonts.googleapis.com/css?family=Raleway');

@import url('https://fonts.googleapis.com/css?family=Courgette');

@import
	url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css')
	;
</style>
</head>
<body>
	<div class="background">
		<div class="header">
			
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
			<h1>Sign-Up</h1>
		</div>
		
		<div class="container">
			<div class="formBox">
				<form class="signUpForm" action="AddingDoctor"
					method="post">

					<div>
						Full Name : <input type="text" name="name"
							placeholder="Enter your name" required="required" autofocus>
					</div>
					<div>
						<label>Mobile No. : <input  type="text"
							pattern=".{10}" title="10 digits required" name="mobile_no"
							placeholder="Enter registered mobile number" required></label>
					</div>
					<div>
						<label>Email : <input type="email" name="email" placeholder="Enter your email id" required></label>
					</div>
					<div>
						<label>Password : <input type="password" pattern=".{5,10}" title="5 to 10 chars"
							name="password" placeholder="Enter password" required></label>
					</div>
					<div>
						<label>City : <input type="text" name="city" placeholder="Enter your city" required></label>
					</div>	
					<hr>
					<div><b>CAREER</b></div>
					<div>
						<label> Qualifications: <input type="text" name="qualifications" title="Enter comma separated degrees" placeholder="Enter your Qualifications" required></label>
					</div>
					<div>
						<label>Experience : <input type="text" name="experience" placeholder="Enter your experience in years" required></label>
					</div>
					<div>
						<label>I agree to all terms and conditions <input
							type="checkbox" name="agree" required></label>
					</div>
					<div align="center">
						<input type="submit" value="Submit"> &nbsp;&nbsp;&nbsp;
						<input type="reset" value="Clear">
					</div>
					<p align="right" style="font-size: 1em">
						<a href="doctor_login1.jsp">Already have an Account?</a>
					</p>
				</form>
			</div>
		</div>

		<div class="footer">
			<a href="">Help</a>
		</div>
	</div>
</body>
</html>
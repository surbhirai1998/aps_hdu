
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>She takes on the world</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/Copyoflogin.css" rel="stylesheet" type="text/css">
<style>
@import url('https://fonts.googleapis.com/css?family=Raleway');

@import url('https://fonts.googleapis.com/css?family=Courgette');

@import
	url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css')
	;
</style>
<script type="text/javascript">


var counter = 1;
function addInput(divName){
     
          var newdiv = document.createElement('div');
          newdiv.innerHTML =(counter + 1) + " : <input type=\"text\" name=\"med[]\" placeholder=\"Medicine name and dosage\" style=\"width:80%\" required=\"required\" autofocus>&nbsp;&nbsp;&nbsp;";
          document.getElementById(divName).appendChild(newdiv);
          counter++;
    	document.getElementById('count').value = counter;
     }
     
     function returnCounter(){
    	 return counter;
     }
</script>
</head>

<body>
	<div class="background">
		<div class="header">
			<div class="title">
				<a href="home1.html" style="color:white; text-decoration: none;"><h1>She Takes On The World</h1></a>
			</div>
		</div>

		<div class="navigationBar">
		<ul>
		<li><a href="Doctor_home.jsp">Home</a></li>    
		<li><a href="about.html">About</a></li>    
		<li><a href="contact.html">Contact</a></li>    
		</ul>
		</div>

		<div class="heading">
			<h2>Add constituents of medicine</h2>
		</div>
		
			<div class="formBox">
				<form class="signUpForm" id="report" action="SetReport"
					method="post">
					<label>Patient's Name: <input type="text" name="name" required autofocus></label><br>
					<label>Date Of Birth: <input type="date" name="dob" required></label><br>
					<label>Gender: <input type="text" name="gender" value="Female" readonly="readonly" required></label><br>
					<label>Email id: <input type="text" name="email" required></label><br>
					<hr>
					<label>Consulting-Doctor: <input type="text" name="doc_name" required></label><br>
					<label>Doctor Email id: <input type="text" name="d_email" required></label><br>
					<label>Suggestions: <textarea rows="4" cols="50" name="suggestions" style="vertical-align: baseline;" form="report" placeholder="Enter text here..."></textarea></label>
					<br>
					<label>&emsp;&emsp;&emsp;&emsp;Test: <textarea rows="4" cols="50" name="test" style="vertical-align: baseline;" form="report" placeholder="Enter text here..."></textarea></label>
					<br>
					
					 <div id="dynamicInput">Medication:<br>
					 1 : <input type="text" name="med[]"
							placeholder="Medicine name and dosage(specify if none)" style="width:80%" required="required" autofocus>
							&nbsp;&nbsp;&nbsp;
							
					</div>
					<input type="hidden" name="counter" id="count" value="1">
    				 
    				<br>
    				 <input type="button" value="Add more medicines" onClick="addInput('dynamicInput');">
					 
					 <div>
						<label>Confirm <input
							type="checkbox" name="agree" required></label>
					</div> 
					<div align="center">
						<input type="submit" value="Submit"> &nbsp;&nbsp;&nbsp;
						<input type="reset" value="Clear">
					</div>
					
				</form>
			</div>
		

		<div class="footer">
			<a href="">Help</a>
		</div>
	</div>
</body>

</html>
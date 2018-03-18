<!DOCTYPE html>
<html>
<head> 
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
	<title>Welcome to the She world</title>
	 <link href="css/bootstrap.min.css" rel="stylesheet">
	 <script src="js/bootstrap.min.js"></script>
	 <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!--Font-Awesome and PT-Sans-->
    <!-- <link href="fonts/font-awesome/web-fonts-with-css/css/fontawesome-all.css" rel="stylesheet"> -->
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <link href="css/homepage.css" rel="stylesheet">
</head>
<body>
<%
HttpSession session1 = request.getSession();
if(request.getAttribute("client_name")==null){
	response.sendRedirect("doctor_login1.jsp");
}
String clientName = (String)request.getAttribute("client_name");
session1.setAttribute("client_name",clientName);
%>
	<div class="background">
		
		<div id="navigation_bar">
	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="home1.html">SHE TAKES ON THE WORLD</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="home1.html">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
            <li><a href="LogoutController">Logout</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
</div>
<div class="store" style="display: flex;flex-direction: column;margin-top: 100px">
	<div style="text-align:center">
	<h4>Logged in as <%=clientName %></h4>
	<h1><a href="MakeReport.jsp">Make and Send Report</a></h1>
	Click on the link to create new Report
	</div>
	
 </div>
 </div>
 </div>
</body>
</html>
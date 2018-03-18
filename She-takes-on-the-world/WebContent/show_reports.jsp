<%@page import="aps.com.Report"%>
<%@page import="java.util.ArrayList" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html> 
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
	<title>Welcome to the She world</title>
	 <link href="css/bootstrap.min.css" rel="stylesheet">
    <!--Font-Awesome and PT-Sans-->
    <link href="fonts/font-awesome/web-fonts-with-css/css/fontawesome-all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <link href="css/homepage.css" rel="stylesheet">
    <link href="css/report.css" rel="stylesheet">
    <script>
    	function open_menu(){
    		document.getElementById("trimesters").style.display="block";
    		document.getElementById("angle-down-btn").style.display="none";
    	}
    </script>
</head>
<body>
 <%
/* HttpSession session1 = request.getSession();
if(request.getAttribute("client_name")==null){
	response.sendRedirect("login1.jsp");
}
String clientName = (String)request.getAttribute("client_name");
session1.setAttribute("client_name",clientName); */
ArrayList<Report> reportList = null;
if(request.getAttribute("reportList")!=null){
	reportList = (ArrayList<Report>)request.getAttribute("reportList");
}else{
	response.sendRedirect("no_reports.html");
}
%> 
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
	<div class= "col-md-2 sidebar">
		
		<ul class="nav nav-sidebar">
			<li class="active">
				<a href="#">Pregnancy <button type="button" id="angle-down-btn" style="float: right;border:none;background-color: #f5f5f5;" onclick="open_menu()">
					<span>
						<i class="fas fa-angle-down"></i>
					</span>
				</button><span class="sr-only">(current)</span></a>
				<ul id="trimesters" style="display: none;">
					<li><small>FIRST TRIMESTER</small></li>
					<li><small>SECOND TRIMESTER</small></li>
					<li><small>THIRD TRIMESTER</small></li>
					<li><small>PREGNANCY WEEK BY WEEK</small></li>
				</ul>
			</li>
			
			<li class="active">
				<a href="#">Maternal Health</a>
			</li>
			<li class="active">
				<a href="#">Child Health</a>
			</li>
			
			<li class="active">
				<a href="#">Parenting</a>
			</li>
		</ul>
		<hr>
		<ul class="nav nav-sidebar">
			<li class="active">
				<a href="ShowDoctors">Contact Doctor</a>
			</li>
			
			<li class="active">
				<a href="ViewAllReports">Reports</a>
			</li>
			<li class="active">
				<a href="#">Awareness Tutorials</a>
			</li>
			
		</ul>
		<hr>
		
	</div>
	<div class="container-fluid" style="width:1200px">
	<div class="row">
		<div class="col-md-10 col-md-offset-2 main">
			<%for(Report r  : reportList) {%>
			<div class="report">
			<pre>
			<h3>Paitient's Name : <%=r.getP_name()%> </h3>
				Date of birth : <%= r.getDob()%>
				Gender : Female
				Email : <%=r.getEmail() %>
			    <hr style="width:80%;">
				Consulting Doctor :<%=r.getD_name() %>
				Doctor's Email : <%=r.getD_email()%>
				Suggestions : <%=r.getSuggestions() %>
				Tests : <%=r.getTest()%>
				Medicines : 
				<%
				String[]meds = r.getMed();
				for(String med : meds){ %>
				<%=med %>
				<%} %>
			</pre>
			
			</div>
			<%} %>
	
	</div>
	</div>
	</div>
</body>
</html>
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
    <!--Font-Awesome and PT-Sans-->
    <link href="fonts/font-awesome/web-fonts-with-css/css/fontawesome-all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <link href="css/homepage.css" rel="stylesheet">
    <script>
    	function open_menu(){
    		document.getElementById("trimesters").style.display="block";
    		document.getElementById("angle-down-btn").style.display="none";
    	}
    </script>
</head>
<body>
<%
HttpSession session1 = request.getSession();
if(request.getAttribute("client_name")==null){
	response.sendRedirect("login1.jsp");
}
String clientName = (String)request.getAttribute("client_name");
session1.setAttribute("client_name",clientName);
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
            <li><a href="#">About</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li><a href="LogoutController">Logout</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
	<div class= "col-sm-3 col-md-2 sidebar">
		
		<ul class="nav nav-sidebar">
			<li class="active">
				<a href="#">Pregnancy <button type="button" id="angle-down-btn" style="float: right;border:none;background-color: #f5f5f5;" onclick="open_menu()">
					<span>
						<i class="fas fa-angle-down"></i>
					</span>
				</button><span class="sr-only">(current)</span></a>
				<ul id="trimesters" style="display: none;">
					<li><a href="first_trimester.html"><small>FIRST TRIMESTER</small></a></li>
					<li><a href="second_trimester.html"><small>SECOND TRIMESTER</small></a></li>
					<li><a href="third_trimester.html"><small>THIRD TRIMESTER</small></a></li>
				</ul>
			</li>
			
			<li class="active">
				<a href="maternal_health.html">Maternal Health</a>
			</li>
			<li class="active">
				<a href="child.html">Child Health</a>
			</li>
			
		</ul>
		<hr>
		<ul class="nav nav-sidebar">
			<li class="active">
				<a href="doctor_contact.jsp">Contact Doctor</a>
			</li>
			
			<li class="active">
				<a href="ViewAllReports">Reports</a>
			</li>
			<li class="active">
				<a href="videos.html">Awareness Tutorials</a>
			</li>
			
		</ul>
		<hr>
		
	</div>
	<div class="container" style="display: flex;flex-direction: column; margin-top: 70px">
		<img src="images/coverPic.jpg" alt="pregnantLady" style="height: 50%;width: 1250px" >

   
	<div class="row" style="margin: auto;">
		<div class=" col-md-4">
		
    	<!-- Info Card with social icons -->
		<div class="info-card" >
				<div class="front" style="border: none;box-shadow: 20px 20px 50px grey;">
					<img class="card-image" src="images/happy.jpg">
				</div>
			<div class="back">
				<h2>Maternal Health</h2>
				<p>
					Pregnancy is the natural event in the life of women of reproductive age group. Pregnancy is the fertilization and development of one or more offspring, known as an embryo or foetus, in a woman's uterus. In a pregnancy, there can be multiple gestations, as in the case of twins or triplets. Childbirth usually occurs about 38 weeks after conception and in women who have a menstrual cycle length of four weeks, this is approximately 40 weeks from the start of the last normal menstrual period (LNMP). Conception can be achieved through sexual intercourse or assisted reproductive technology. Pregnancy is the most important phase in women’s life. There is lot of concern to reduce maternal mortality and infant mortality.
				</p>
				
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<!-- Scrolling enabled for longer content -->
		<div class="info-card" >
				<div class="front" style="border: none;box-shadow: 20px 20px 50px grey;">
					<img class="card-image" src="images/baby.jpg">
				</div>
			<div class="back">
				<h2>Child Health</h2>
				<p>
					A child's growth is a complex and continuous process. Children should be able to do certain things at certain ages. These are called developmental milestones. As a parent, it is important to realize that no two children develop at the same rate. It is therefore futile to worry that the child next door can do this and that, while ones own child cannot. The child should be observed for some time, at the ages noted for different activities.

					If at the end of a few months s/he is still not doing a particular activity, a paediatrician must be consulted. This takes into account the fact that the child may be acting differently because the child is sick or upset. Sometimes the child may develop more slowly in certain areas than other children of the same age while his/her other activities may be ahead of other children. Forcing a child to learn to walk when the child is not ready does not help.
				</p>
			</div>
		</div>
     </div>
     <div class=" col-md-4">
		
    	<!-- Info Card with social icons -->
		<div class="info-card" >
				<div class="front" style="border: none;box-shadow: 20px 20px 50px grey;">
					<img class="card-image" src="images/awareness.jpg">
				</div>
			<div class="back">
				<h2>Need Help? Here We Are!</h2>
				<p>
					“Be the parent today that you want your kids to remember tomorrow.” ~Unknown
					Probably the one that drives me the most to try to be a better, calmer, more patient parent.
				</p>
				
			</div>
		</div>
	</div>
 </div>
 </div>
 </div>
 </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html>
<head>
<title>Sport A Ecommerce Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
<link href="resource/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="resource/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="resource/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Sport Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//fonts-->

</head>
<body> 
<!--header-->
	<%@include file = "header.jsp" %>
	<!---->	
<div class="container">
		<div class="register">
		<h2>REGISTER</h2>		
		<div class=" register-top">
		 	<form:form action="register" commandName="userDetails"> 
			<div> 	
				<span>First Name</span>
				<form:input type="text" placeholder="Enter your first name" path="userFirstName"/> 
			</div>
			
			<div> 	
				<span>Last Name</span>
				<form:input type="text" placeholder="Enter your Last name" path="userLastName"/> 
			</div>
			
			<div> 	
				<span>User Name</span>
				<form:input type="text" placeholder="Enter your username" path="username"/> 
			</div>
				
			<div> 	
				<span>Email</span>
				<form:input type="text" placeholder="Enter your Email Id" path="userEmail"/> 
			</div>
			<div> 	
				<span>Phone Number</span>
				<form:input type="text" placeholder="Enter your Phone Number" path="userPhone"/> 
			</div>
					
			<div> 
				<span >Password</span>
				<form:input type="text" placeholder="Enter your password" path="password"/>
			</div>				
				<input type="submit" value="Submit"/> 
			</form:form>
		</div>		
	</div>
	</div>

	<!---->
<!--footer-->
	<%@include file = "footer.jsp" %>
</body>
</html>
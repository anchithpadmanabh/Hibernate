<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>Sport Shoes </title>
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
		<div class="login">
		<h2>Login</h2>
		<div class="account-pass">
		<div class="col-md-7 account-top">
			<%-- <form>  --%>
			<form name="login" action="<c:url value='/j_spring_security_check' />" method="post">
				<c:if test="${not empty error}">
					<div class="error" style="color: #ff0000;">${error}</div>
				</c:if>
				<div class="span9 center">
				<c:if test="${not empty msg}">
					<div class="msg">${msg} </div>
				</c:if>
				</div>					
			<div> 	
				<span>Username</span>
				<input type="text" id="username" name="username" class="form-control" placeholder="user name"/> 
			</div>
			<div> 
				<span >Password</span>
				<input type="password" id="password" name="password" class="form-control" placeholder="password"/>
			</div>				
			<input type="submit" value="Login"> 
			<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
			 <%-- 
			<input type="text" id="username" name="username" class="form-control" placeholder="user name"/> 
			<input type="password" id="password" name="password" class="form-control" placeholder="password"/>
			<input type="submit" value="Login">
			<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" /> --%>
			 </form>
		</div>
		<!-- <div class="col-md-5 left-account ">
			<a href="single">
			<img class="img-responsive " src="resource/images/ac.png" alt="">
			</a>
			<div class="five">
			<h1>25% </h1><span>discount</span>
			</div>
			<a href="register" class="create">Create an account</a>
		<div class="clearfix"> </div>
	</div> -->
	<div class="clearfix"> </div>
	</div>
	</div>

</div>
	<!---->
<!--footer-->
	<%@include file = "footer.jsp" %>
</body>
</html>
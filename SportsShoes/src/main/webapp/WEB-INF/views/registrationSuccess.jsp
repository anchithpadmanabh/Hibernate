<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<!--header-->
	<%@include file = "header.jsp" %>
	<!---->	

<div id="all">
	<div id="heading-breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<h1>Home</h1>
				</div>
				<div class="col-md-5">
					<ul class="breadcrumb">
						<li><a href="<c:url value="/"/>">Home</a></li>
						<li>Sign Up Success</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

<h3 align="center">You are successfully registered</h3>

		<br>
		<br>
<div id="put-center" align="center">

<a href="<c:url value="/"/>"  class="btn btn-template-main" >Continue shopping</a>

</div>
		<br>
		<br>
		<br>


		<!--footer-->
	<%@include file = "footer.jsp" %>

	</div>
	<!-- /#all -->


	<!-- #### JAVASCRIPT FILES ### -->
	<%-- <%@include file="/WEB-INF/views/scriptfiles.jsp"%> --%>

</body>
</html>
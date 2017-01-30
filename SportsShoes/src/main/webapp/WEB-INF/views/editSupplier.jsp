<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<style type="text/css">

.form-group input{
	width:50%;
}
</style>

<!DOCTYPE html>
<html>
<head>
<title>Sport A E-commerce Category Flat Bootstrap Responsive Web-site Template | Home :: w3layouts</title>
<link href="resource/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="resource/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="resource/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Sport Responsive web template, Bootstrap Web Templates, Flat Web Templates, 
Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for 
Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); 
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//fonts-->
</head>
<body> 
<!--header-->
<%@include file = "header.jsp" %>
	<!---->

<%-- 
<ul>
	<div class=" h_menu4">
			<ul class="memenu skyblue">

				<li><a class="color4" href="loginPage">LOGIN</a></li>
				<li><a class="color6" href="contact">CONTACT</a></li>

				<c:choose>
					<c:when test="${pageContext.request.userPrincipal.name != null}">
						<c:if test="${pageContext.request.userPrincipal.name == 'Admin'}">

							<li><a class="color2" href="<c:url value='/categories'/>">CATEGORY</a></li>
							<li><a class="color2" href="<c:url value="/products"/>">PRODUCT</a></li>
							<li><a class="active" href="<c:url value="/suppliers"/>">SUPPLIER</a></li>
						</c:if>
						<c:if test="${pageContext.request.userPrincipal.name != 'Admin'}">
							<li><a class="color2" href="<c:url value="/user/cart"/>">CART</a></li>
						</c:if>
					</c:when>

					<c:otherwise>

					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${pageContext.request.userPrincipal.name != null}">
						<li class="grid"><a class="color2"
							href="<c:url value="/j_spring_security_logout"/>">SIGN OUT</a>
					</c:when>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
			</ul>
			<div>
</ul>

	
 --%>	<!-- <a href="#"><img 
						src="images/category1.jpg" alt=""></a> 
 
		</div>
	</div>
	 
	<div class="col-md-4 left-account ">
					 
						<!-- <img src="src/main/webapp/images/category1.jpg" alt="" style="width:304px;height:228px;">
					 -->
					<!-- <div class="clearfix"></div>
				</div>
	 -->
	<!-- grow -->
	<!--content-->
	<!--  <div class="container">
		<div class="account">
			<<div class="account-pass">
				<div class="col-md-8 account-top">
				
			 <h3>EDIT SUPPLIER</h3> -->
			 
	<div id="content">
		<div class="container">
			<h2 class="text-uppercase">Supplier</h2>


			<hr>
	
		<h3>Edit Supplier</h3>
			<br>
				<c:url var="addAction" value="/supplier/add"></c:url>
			<c:url var="addAction" value="/supplier/add"></c:url>
			<form:form action="${addAction}" commandName="supplier">


				<div class="form-group">
					<c:choose>
						<c:when test="${!empty supplier.id}">

							<div class="form-group">
								<label for="name">ID</label>
								<div class="controls docs-input-sizes">
									<form:input placeholder="id" path="id" required="true"
										class="form-control" id="id" disabled="true" readonly="true" />
								</div>
							</div>

						</c:when>

						<c:otherwise>

							<div class="form-group">
								<form:input path="id" hidden="true" />
								<label for="id">ID</label>
								<div class="controls docs-input-sizes">
									<form:input placeholder="Id" path="id" required="true"
										class="form-control" id="id"
										title="id should contains 6 to 7 characters" patttern=".{6,7}" />
								</div>
							</div>

						</c:otherwise>
					</c:choose>

				</div>

				<div class="form-group">
					<form:input path="id" hidden="true" />
					<label for="name">Name</label>
					<div class="controls docs-input-sizes">
						<form:input placeholder="Name" path="name" required="true"
							class="form-control" id="name" />
					</div>
				</div>

				<div class="form-group">
					<label for="address">Address</label>
					<div class="controls docs-input-sizes">
						<form:input placeholder="Address" path="address"
							class="form-control" id="address" />
					</div>
				</div>

				<div class="form-group">
					<div class="controls docs-input-sizes">
						<c:if test="${!empty supplier.name}">

							<button type="submit" class="btn btn-template-main pull-left">
								<i class="fa fa-user-md"></i> Edit Supplier
							</button>
						</c:if>
						<c:if test="${empty supplier.name}">

							<input type="submit" value="ADD SUPPLIER">
							<br>
						</c:if>
					</div>
				</div>
			</form:form>
			<c:if test="${!empty supplierList}">

				<div class="row">
					<h3>SUPPLIER LIST</h3><br>
					<table class="tg">
						<tr>
							<th width="120"> ID</th>
							<th width="160">NAME</th>
							<th width="160">ADDRESS</th>
							<th width="60">EDIT</th>
							<th width="60">DELETE</th>
						</tr>
						<c:forEach items="${supplierList}" var="supplier">
							<tr>
								<td>${supplier.id}</td>
								<td>${supplier.name}</td>
								<td>${supplier.address}</td>
								<td><a class="color2"
									href="<c:url value='supplier/edit/${supplier.id}' />">Edit</a></td>
								<td><a
									href="<c:url value='supplier/remove/${supplier.id}' />">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</c:if>
		<br> <br> <br>
		</div>
	</div><!-- </div></div> -->
	<div data-role="footer" style="text-align:center;">
    
    <a href="#" class="ui-btn ui-corner-all ui-shadow ui-icon-plus ui-btn-icon-left">ADD NEW SUPPLIERS</a>
    <%@include file="/WEB-INF/views/footer.jsp"%>
  </div>
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- <script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
 -->

<!DOCTYPE html>
<html>
<head>
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}
li {
	float: left;
}
li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}
li a:hover:not (.active ) {
	background-color: #111;
}
.active {
	background-color: #4CAF50;
}
p{text-align:"center"}
</style>
</head>


<ul>

	<div class=" h_menu4">
			<ul class="memenu skyblue">

				<li><a class="color4" href="loginPage">LOGIN</a></li>
				<li><a class="color6" href="contact">CONTACT</a></li>

				<c:choose>
					<c:when test="${pageContext.request.userPrincipal.name != null}">
						<c:if test="${pageContext.request.userPrincipal.name == 'Admin'}">
							<li><a class="active" href="<c:url value='/categories'/>">CATEGORY</a></li>
							<li><a class="color2" href="<c:url value="/products"/>">PRODUCT</a></li>
							<li><a class="color2" href="<c:url value="/suppliers"/>">SUPPLIER</a></li>
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
</head>
<body>
	<!-- <a href="#"><img 
						src="images/category1.jpg" alt=""></a> 
 -->
		</div>
	</div>
	
	<div class="col-md-4 left-account ">
					 
						<!-- <img src="src/main/webapp/images/category1.jpg" alt="" style="width:304px;height:228px;">
					 -->
					<div class="clearfix"></div>
				</div>
	
	<!-- grow -->
	<!--content-->
	<div class="container">
		<div class="account">
			<div class="account-pass">
				<div class="col-md-8 account-top">
			<h3>EDIT CATEGORY</h3>
			<br>
					<c:url var="addAction" value="/category/add"></c:url>
					<form:form action="${addAction}" commandName="category" >
						<div class="form-group">
							<c:choose>
								<c:when test="${!empty category.id}">
									<div class="form-group"><br>
										<label for="name">ID</label>
										<div class="controls docs-input-sizes">
											<form:input placeholder="id" path="id" required="true"
												class="form-control" id="id" disabled="true" readonly="true" />
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="form-group">
										<form:input path="id" hidden="true" /><br>
										<label for="id">ID</label><br>
										<div class="controls docs-input-sizes">
											<form:input placeholder="ID" path="id" required="true"
												class="form-control" id="id"
												title="id should contains 6 to 7 characters"
												patttern=".{6,7}" />
										</div>
									</div>
								</c:otherwise>
							</c:choose>
						</div>

						<div class="form-group">
							<form:input path="id" hidden="true" /><br>
							<label for="name">NAME</label><br>
							<div class="controls docs-input-sizes">
								<form:input placeholder="Name" path="name" required="true"
									class="form-control" id="name" />
							</div>
						</div>

						<div class="form-group"><br>
							<label for="description">DESCRIPTION</label><br>
							<div class="controls docs-input-sizes">
								<form:input placeholder="Description" path="description"
									class="form-control" id="description" />
							</div>
						</div>

	<!-- <div class="grow">					
	<div class="container">
		<div class="account">
			<div class="account-pass">
				<div class="col-md-8 account-top">
 -->

								<c:if test="${!empty category.name}">

									<br><input class="color2" type="submit" value="EDIT CATEGORY">
								</c:if>
								<c:if test="${empty category.name}">

									<input type="submit" value="ADD CATEGORY">
								</c:if>
							</div>
						</div>
					</form:form>
				<br>
		
					<div class="all">
						<c:if test="${!empty categoryList}">
							<h3>CATEGORY LIST</h3><br>
							<table class="tg table-hover">
								<tr>
									<th width="120">ID</th>
									<th width="160"> NAME</th>
									<th width="160"> DESCRIPTION</th>
									<th width="80">EDIT</th>
									<th width="60">DELETE</th>
								</tr>
								<c:forEach items="${categoryList}" var="category">
									<tr>
										<td>${category.id}</td>
										<td>${category.name}</td>
										<td>${category.description}</td>
										<td><a class="color6"
											href="<c:url value='category/edit/${category.id}' />">Edit</a></td>
										<td><a class="color6"
											href="<c:url value='category/remove/${category.id}' />">Delete</a></td>
									</tr>
								</c:forEach>
							</table>
			</div>			</c:if>
			</div>			<br> <br> <br>
			</div>
			</section>
			</div>
</div></div>

		</div>
	<div data-role="footer" style="text-align:center;">
    
    <a href="#" class="ui-btn ui-corner-all ui-shadow ui-icon-plus ui-btn-icon-left">ADD NEW CATEGORY</a>
    <%@include file="/WEB-INF/views/footer.jsp"%>
  </div>
	
</body>
</html>
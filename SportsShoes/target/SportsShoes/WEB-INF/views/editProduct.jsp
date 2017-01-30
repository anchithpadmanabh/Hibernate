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
							<li><a class="color2" href="<c:url value='/categories'/>">CATEGORY</a></li>
							<li><a class="active" href="<c:url value="/products"/>">PRODUCT</a></li>
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
			<!-- <<div class="account-pass">
				<div class="col-md-8 account-top"> --> 

			<h3>EDIT PRODUCT</h3>
			<br>
					<c:url var="addAction" value="/product/add"></c:url>
			<form:form action="${addAction}" commandName="product"
				enctype="multipart/form-data">

				<div class="form-group">
					<c:choose>
						<c:when test="${!empty product.id}">

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
									<form:input placeholder="id" path="id" required="true"
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
						<form:input placeholder="name" path="name" required="true"
							class="form-control" id="name" />
					</div>
				</div>

				<div class="form-group">
					<label for="price"> <spring:message text="Price" />
					</label>
					<div class="controls docs-input-sizes">
						<form:input path="price" required="true" class="form-control"
							id="price" />
					</div>
				</div>

				<div class="form-group">
					<label for="description">Description</label>
					<div class="controls docs-input-sizes">
						<form:input placeholder="description" path="description"
							class="form-control" id="description" />
					</div>
				</div>

				<div class="form-group">
					<label for="supplier">Supplier</label>
					<div class="select-style">
						<form:select path="supplier.name" items="${supplierList}"
							itemValue="name" itemLabel="name" />
					</div>
				</div>

				<div class="form-group">
					<label for="category">Category</label>
					<div class="select-style">
						<form:select path="category.name" items="${categoryList}"
							itemValue="name" itemLabel="name" />
					</div>
				</div>

				<div class="form-group">
					<label for="description">Upload image</label>
					<div class="controls docs-input-sizes">
						<form:input id="itemimage" path="itemImage" type="file"
							class="form:input-large" />
					</div>
				</div>

				<div class="form-group">
					<div class="controls docs-input-sizes">
						<c:if test="${!empty product.name}">

							<button type="submit" class="btn btn-template-main pull-left">
								<i class="fa fa-user-md"></i> Edit Product
							</button>
						</c:if>
						<c:if test="${empty product.name}">

							<button type="submit" class="btn btn-template-main pull-left">
								<i class="fa fa-user-md"></i> Add Product
							</button>
						</c:if>
					</div>
				</div>
			</form:form>
			<br>
			<br>

<div class="all">
				<c:if test="${!empty productList}">
					<h3>Product List</h3>
					<table class="tg">
						<tr>
							<th width="80">Product ID</th>
							<th width="120">Product Name</th>
							<th width="200">Product Description</th>
							<th width="80">Price in Rs.</th>
							<th width="80">Product Category</th>
							<th width="80">Product Supplier</th>
							<th width="60">Edit</th>
							<th width="60">Delete</th>
							<th width="60">Product Image</th>
						</tr>
						<c:forEach items="${productList}" var="product">
							<tr>
								<td>${product.id}</td>
								<td>${product.name}</td>
								<td>${product.description}</td>
								<td align=right>Rs.${product.price}</td>
								<td>${product.category.name}</td>
								<td>${product.supplier.name}</td>
								<td><a href="<c:url value='product/edit/${product.id}' />">Edit</a></td>
								<td><a
									href="<c:url value='product/remove/${product.id}' />">Delete</a></td>
								<td><img
									src="<c:url value="/resources/img/productImages/${product.id}.jpg"/>"
									height="142" width="142" alt="product image" /></td>
								<td><a
									href="<c:url value="/resources/img/productImages/${product.id}.jpg"/>">Click
										here</a></td>
							</tr>
						</c:forEach>
					</table>
				</c:if>
			</div>

		</div>

		<br>
		<br>
		<br>

	</div>

</div>
<!-- footer -->
	
  <div data-role="footer" style="text-align:center;">
    
    <a href="#" class="ui-btn ui-corner-all ui-shadow ui-icon-plus ui-btn-icon-left">ADD NEW PRODUCTS</a>
    <%@include file="/WEB-INF/views/footer.jsp"%>
  </div>
  
</body>
</html>
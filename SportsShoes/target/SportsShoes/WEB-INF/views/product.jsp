<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
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

<title>Sports A Ecommerce Category Flat Bootstrap Responsive
	Website Template | Home :: w3layouts</title>
<link href="resource/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="resource/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="resource/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Mattress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<!-- start menu -->
<link href="resource/css/memenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="resource/js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<script src="resource/js/simpleCart.min.js">
	
</script>
</head>
<style type="text/css">
.form-group input{
	width:50%;
}
body{background-img:"category1".jpg)
</style>
<body>
	<!--header-->
<%@include file="header.jsp"%> 
	<!-- grow -->
	<div class="grow">
		<div class="container">
			<h2>PRODUCT</h2>
			<background ="images/category1.jpg" alt="">
		</div>
	</div>
	<div class="col-md-4 left-account ">
					<a href="single"><img class="img-responsive " 
						src="images/category1.jpg" alt=""></a>
					
					<div class="clearfix"></div>
				</div>
				
				<div class="container">
		<div class="account">
			<div class="account-pass">
				<div class="col-md-8 account-top">
	
	
			<h4>ADD A PRODUCT</h4>
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
									src="<c:url value="/resources/img/productImages/${product.id}.png"/>"
									height="142" width="142" alt="product image" /></td>
								<td><a
									href="<c:url value="/resources/img/productImages/${product.id}.png"/>">Click
										here</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>			</c:if>
			</div>			<br> <br> <br>
			</div>
			</div>
			</div>
			</div>
			
			</section>
			</div>
</div></div>
		</div>
		 <%@include file="footer.jsp"%>
</body>
</html>
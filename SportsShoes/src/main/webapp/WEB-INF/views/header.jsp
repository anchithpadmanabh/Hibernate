<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

 </head>
<body>
<div class="line">
	
	</div>
	<div class="header"> 
		<!-- <div class="logo">
			<a href="index"><img src="resource/images/logo.png" alt="" ></a>
		</div> --> 
		<div class="header-top"> 
			<div class="header-grid">
				<ul class="header-in">
					<c:choose>
						<c:when test="${pageContext.request.userPrincipal.name != null}">							
							<i class="fa fa-user-admin"></i>
							<li><a>Hello, ${pageContext.request.userPrincipal.name}</a></li>
							<li><a href="<c:url value="/j_spring_security_logout"/>">
							<i class="fa fa-sign-out"></i>Sign Out</a></li>
						</c:when>						
					</c:choose>
					<li ><a href="index">Home   	 </a> </li>
					<li ><a href="loginPage">Login   </a> </li>
					<li ><a href="register">Register </a> </li>
					<li ><a href="contact">Contact   </a> </li>
					<br>
					<br>
					<br>
					<br>
					<c:choose>
						<c:when test="${pageContext.request.userPrincipal.name != null}">
							<c:if test="${pageContext.request.userPrincipal.name == 'Admin'}">
								<li><a class="color2" href="<c:url value="/suppliers"/>">SUPPLIER</a></li>	
								<li><a class="color2"  href="<c:url value='/categories'/>">CATEGORY</a></li>
								<li><a class="color2" href="<c:url value="/products"/>">PRODUCT</a></li>
							</c:if>
							<c:if test="${pageContext.request.userPrincipal.name != 'Admin'}">
								<li><a class="color2" href="<c:url value="/user/cart"/>">CART</a></li>
							</c:if>
						</c:when>
					</c:choose>
						
						<!-- 
						<li>	
							<select class="in-drop">
							  <option value="Dollars" class="in-of">Dollars</option>
							  <option value="Euro" class="in-of">Euro</option>
							  <option value="Yen" class="in-of">Yen</option>
							</select>
						</li>	
						-->				
				</ul>
				
				  <!-- Search Box
					<div class="search-box">
					    <div id="sb-search" class="sb-search">
							<form>
								<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
								<input class="sb-search-submit" type="submit" value="">
								<span class="sb-icon-search"> </span>
							</form>
						</div>
				    </div>
				    -->
					<!-- search-scripts -->
					<!-- 
					<script src="resource/js/classie.js"></script>
					<script src="resource/js/uisearch.js"></script>
					<script>
						new UISearch( document.getElementById( 'sb-search' ) );
					</script>
					-->
					<!-- //search-scripts -->
					<!-- 
					<div class="online">
					<a href="single" >SHOP ONLINE</a>
					</div>
					<div class="clearfix"> </div>
					-->
		<!-- 	</div> --> <!-- This is for header-top -->
			
			<div class="header-bottom">
				<div class="h_menu4">
				
				<!-- start h_menu4 -->
				
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
				<!-- 	<li class="active"><a href="product">Running</a></li>
					<li><a href="product">Fitness</a></li>		
					<li><a href="product">Tennis</a></li>
					<li><a href="product">Football</a></li>
					<li><a href="product">Golf</a></li> -->
					
					<c:forEach items="${categoryList}" var="category">
						<li class="grid"><a class="color2" href="${category.name}">${category.name}</a>
						<!-- <li><a href="product">More <i> </i></a> -->
						<ul>
							<c:forEach items="${category.products}" var="product">
								<br>
								<li class="grid"><a class="color2"
									href="<c:url value='product/get/${product.id}' />">${product.name}</a></li>
							</c:forEach>
							<!-- <li><a href="contact">Contact</a></li>
							<li><a href="account">Account</a></li>
							<li><a href="register">Register</a></li> -->
						</ul>
						</li>
					</c:forEach>		
				</ul>
				<script type="text/javascript" src="resource/js/nav.js"></script>
			</div>
			-->
			<!-- end h_menu4 -->
			
				<!-- 	<ul class="header-bottom-in">
						<li ><select class="drop">
							  <option value="Dollars" class="in-of">Get Active</option>
							  <option value="Euro" class="in-of">Get Active1</option>
							  <option value="Yen" class="in-of">Get Active2</option>
							</select> </li>
						<li ><select class="drop">
							  <option value="Dollars" class="in-of">Community</option>
							  <option value="Euro" class="in-of">Community1</option>
							  <option value="Yen" class="in-of">Community2</option>
							</select></li>		
					</ul> -->
					
			<div class="clearfix"> </div>
			
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>WEDDING BRIGADE</title>
<style>
.navbar-brand{color:green;}
</style>

</head>
<body style="background-color:LIGHTPINK;">
<!DOCTYPE html>
<div>
		<div data-role="header" data-position="fixed">
			<h1 style="color:blue">WELCOME TO WEDDING BRIGADE</h1>
			${SuccessMessage}
			<table>
				

				<%-- <tr>
					<c:if test="${loggedOut==true}">
					</c:if>
					<td>${logOutMsg}</td>
				</tr> --%>
				<%-- 
				<tr>
					<c:if test="${not empty cartSize}">
						<td align="right"><a href="myCart">My cart</a>(${cartSize})</td>
					</c:if>
				</tr> --%>

			</table>
		</div>
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-asterisk"></span>WEDDING BRIGADE</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#"> <span class="glyphicon glyphicon-home"></span>
      Home</a></li>
      
      <li><a href="#"><span class="glyphicon glyphicon-flash"></span>DESTINATIONS</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-ice-lolly-tasted"></span>CATERING</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-star"></span>EVENTS</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <c:choose>
						<c:when test="${empty loggedInUser}">
							<td ><a href="Login">Login</a></td>&nbsp;&nbsp;
							<td><a href="Registration">Register</a></td>
						</c:when>

						<c:when test="${not empty loggedInUser}">
							<tdstyle="color:white">Welcome ${loggedInUser},</td>
							<td align="right"><a href="logout">Logout</a></td>
						</c:when>
					</c:choose>
    </ul>
  </div>
</nav>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</head>
<body>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="F:\ashu\ashu1.jpg" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="F:\ashu\ashu2.jpg" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="F:\ashu\imagesss.jpg" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="F:\ashu\images.jpg" alt="Flower" width="460" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
</html>


		
			<ul id=menu>
				<c:if test="${not empty List}">
					<c:forEach items="${category.List}" var="category ">
						<li><a href="${category.name}">${category.name}</a>
						
							
					</c:forEach>
				</c:if>
			</ul>
			<br> <br> <br> 
		<%-- --
			<div>
				<c:if test="${!empty selectedProduct.name}">
					<table>
						<tr>
							<th align="left" width="80">Product ID</th>
							<th align="left" width="120">Product Name</th>
							<th align="left" width="200">Product Description</th>
							<th align="left" width="80">Price</th>
							<th align="left" width="200">Product Category</th>
							<th align="left" width="200">Product Supplier</th>
						</tr>
						<tr>
							<td align="left">${SelectedProduct.id}</td>
							<td align="left">${SelectedProduct.name}</td>
							<td align="left">${SelectedProduct.description}</td>
							<td align="left">${SelectedProduct.price}</td>
							<td align="left">${SelectedProduct.category.name}</td>
							<td align="left">${SelectedProduct.supplier.name}</td>
						</tr>
					</table>
				</c:if>
			</div>
 --%>

		${message}

		<div id="Registration">

			<c:if test="${userClickedRegisterHere==true}">
				<jsp:include page="Registration.jsp"></jsp:include>
			</c:if>
		</div>


		${failureMessage}
		<div id="Login">

			<c:if test="${userClickedLoginHere==true}">
				<jsp:include page="Login.jsp"></jsp:include>
			</c:if>
		</div>


		<div id="admin">
			<c:if test="${isAdmin==true}">
				<jsp:include page="adminHome.jsp"></jsp:include>
			
			</c:if>
			<div id="categories">
			<c:if test="${isAdminClickedCategories==true}">
									<jsp:include page="adminHome.jsp"></jsp:include>
							<%@ include file="/views/category.jsp" %>		
			</c:if>
			</div>
				
			<div id="product">
			<c:if test="${isAdminClickedproducts==true}">
				<jsp:include page="adminHome.jsp"></jsp:include>
							<%@ include file="/views/Product.jsp" %>	
			</c:if>
			</div>			
			
			<div id="suppliers">
			<c:if test="${isAdminClickedsuppliers==true}">
				<jsp:include page="adminHome.jsp"></jsp:include>
							<%@ include file="/views/supplier.jsp" %>	
			</c:if>
			</div>

		</div>
	






</body>
</html>
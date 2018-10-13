<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="f"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/Style.css"/>">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.theme.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">

<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
<script
	src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/style.js"/>"></script>
<style type="text/css">
.dropdown {
	position: static !important;
}

.dropdown-menu {
	padding: 20px 0px;
	width: 100%;
	box-shadow: none;
	-webkit-box-shadow: none;
}

.dropdown-menu>li>ul {
	padding: 0;
	margin: 0;
}

.dropdown-menu>li>ul>li {
	list-style: none;
}

.dropdown-menu>li>ul>li>a {
	display: block;
	color: #222;
	padding: 3px 5px;
}

.dropdown-menu>li ul>li>a:hover, .mega-dropdown-menu>li ul>li>a:focus {
	text-decoration: none;
}

.dropdown-menu .dropdown-header {
	font-size: 50px;
	color: #222;
	padding: 5px 60px 5px 5px;
	line-height: 30px;
}
</style>
<script type="text/javascript">
	$(document).ready(
			function() {
				$(".dropdown").hover(
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideDown("400");
							$(this).toggleClass('open');
						},
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideUp("400");
							$(this).toggleClass('open');
						});
			});
</script>

</head>
<body>

	<div class="wrapper">


		<nav>
		<div class="menu-icon">
			<i class="fa fa-bars fa-2x"></i>
		</div>
		<div>
			<a class="logo" href="${pageContext.request.contextPath}/index">RETRO N@TION</a>
		</div>
		<ul>
			<li class="navbar"><c:forEach items="${categorylist}"
					var="category">

					<li class="dropdown d"><a style="color: white;"
						href="${pageContext.request.contextPath}/productCustList/${category.categoryid}"
						class="dropdown-toggle">${category.categoryname}<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li class="col-sm-3">
								<ul>
									<c:forEach items="${category.productlist}" var="product">
										<li><a
											href="${pageContext.request.contextPath}/productDescription/${product.pid}">${product.pname}</a></li>
									</c:forEach>
								</ul>
							</li>
						</ul> <!-- <li><a href="#">Store locator</a></li> --></li>
				</c:forEach> </a>
				</li>


			<c:if test="${pageContext.request.userPrincipal.name == null}">
				<li><a href='<c:url value="/login"></c:url>'>LOGIN</a></li>
			</c:if>

			<c:if test="${pageContext.request.userPrincipal.name!= null}">
				<li><a href='<c:url value="/logout"></c:url>'>Logout</a></li>
				<li><a>WELCOME: ${pageContext.request.userPrincipal.name}</a></li>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name == null}">

				<li><a href="register">REGISTER</a></li>
			</c:if>
			<li><a class="active"
				href="${pageContext.request.contextPath}/admin/category"
				value="Admin">ADMIN</a></li>
		</ul>
		</nav>
		<div>


			<div>
				<c:url value="/resources/images" var="image"></c:url>
				<!--end navigation bar -->


			</div>
</body>
</html>
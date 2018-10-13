<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="f"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/Style.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
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
</head>
<body>
	<%@include file="nav.jsp"%>
	<section class="sec1"> </section>
	<div class="container-fluid bg-grey">
		<div class="row">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-globe logo slideanim"></span>
			</div>
			<div class="col-sm-8">
				<h2>Our Values</h2>
				<br>
				<h4>
					<strong>MISSION:</strong> My mission in life is not merely to
					survive, but to thrive; and to do so with some passion, some
					compassion, some humor, and some style.
				</h4>
				<br>
				<p>
					<strong>VISION:</strong> The most beautiful thing we can experience
					is the mysterious. It is the source of all true art and all
					science. He to whom this emotion is a stranger, who can no longer
					pause to wonder and stand rapt in awe, is as good as dead: his eyes
					are closed.
				</p>
			</div>
		</div>
	</div>
	<div class="container text-center">
		<h1>Our Features</h1>
		<p class="pt-2">Some Features</p>
	</div>
	<div class="container text-center pt-4">
		<div class="row">
			<div class="col-4">
				<img src="<c:url value="/resources/css/if_Chat2_1891020.png"/>"
					class="img-fluid">
			</div>
			<div class="col-4">
				<img src="<c:url value="/resources/css/if_Clock_1891022.png"/>"
					class="img-fluid">
			</div>
			<div class="col-4">
				<img src="<c:url value="/resources/css/if_Menu_green_1891031.png"/>"
					class="img-fluid">
			</div>
			<div class="container text-center pt-4">
				<div class="row py-5">
					<div class="col-4">
						<p>the best response time from the user at any given time and
							can be effective at anytime anywhere</p>
					</div>
					<div class="col-4">
						<p>The best quality for all the products with very good
							warranty and discounted prices</p>
					</div>
					<div class="col-4">
						<p>The best place to find all your fashion products in
							reasonable prices provided at your doorstep</p>
					</div>

				</div>
			</div>
		</div>

	</div>
	<%@include file="footer.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" type="text/css" href="resources/login.css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<br>




	<br>
	<br>
	<br>
	<br>
	<br>







	<div class="container">
		<center>
			<h3>PLEASE LOGIN IN HERE</h3>
		</center>
		<div class="card card-container">
			<h2 class='login_title text-center'>LOGIN</h2>
			<hr>

			<form action='<c:url value="/login" ></c:url>' class="form-signin"
				method="post">
				<span id="reauth-email" class="reauth-email"></span>
				<h4 class="input_title">EMAIL</h4>
				<input type="text" id="inputEmail" name="username" class="login_box"
					placeholder="email" required autofocus>
		<br>
				<h4 class="input_title">PASSWORD</h4>
				<input type="password" id="inputPassword" name="password"
					class="login_box" placeholder="******" required>
				<div id="remember" class="checkbox">
					<label> </label>
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
				<button class="btn btn-lg btn-primary" type="submit">Login</button>
			</form>
			<!-- /form -->
		</div>
		<!-- /card-container -->
	</div>
	<!-- /container -->

<br>
<br>
<br>
<br>
<br>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>
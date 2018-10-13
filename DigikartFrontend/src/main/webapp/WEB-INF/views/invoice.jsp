<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8" />
<title>Invoice</title>
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
</head>
<body>
<%--             <jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
 --%>
	<div class="container">
		<form  class="form-horizontal" action="checkout1">
			<fieldset>
			  <div class="form-group">
							<label class="col-md-6 control-label" for="username">Customer Name</label>
							<div class="col-md-6">
								<label class="col-md-6 control-label" for="username">${userDetails.username}</label>
							</div>
						</div>

					
						<div class="form-group">
							<label class="col-md-6 control-label" for="email">Customer Email
								Address</label>
							<div class="col-md-6">
								<label class="col-md-6 control-label" for="email">${userDetails.email}</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-6 control-label" for="address">Shipping Address</label>
							<div class="col-md-6">
								<label class="col-md-6 control-label" for="address">${userDetails.address}</label>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-md-6 control-label" for="deliverydate">Date Of Delivery</label>
							<div class="col-md-4">
								<label class="col-md-6 control-label" for="deliverydate"> Will be deliverd in 7 Working Days</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label" for="submit"></label>
							<div class="col-md-4">
								<button type="submit" name="invoiceClick" class="btn btn-primary" >OK</button>
							</div>
						</div>
			</fieldset>
		</form>
	</div>
	            <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
	
</body>
</html>
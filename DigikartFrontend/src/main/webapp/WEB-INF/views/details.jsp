<%@ taglib prefix="j" uri="http://java.sun.com/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
row{

}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Detail</title>
</head>
<body>

	<script>
		$(document).ready(function() {
			//-- Click on detail
			$("ul.menu-items > li").on("click", function() {
				$("ul.menu-items > li").removeClass("active");
				$(this).addClass("active");
			})
			$(".attr,.attr2").on("click", function() {
				var clase = $(this).attr("class");
				$("." + clase).removeClass("active");
				$(this).addClass("active");
			})
			//-- Click on QUANTITY
			$(".btn-minus").on("click", function() {
				var now = $(".section > div > input").val();
				if ($.isNumeric(now)) {
					if (parseInt(now) - 1 > 0) {
						now--;
					}
					$(".section > div > input").val(now);
				} else {
					$(".section > div > input").val("1");
				}
			})
			$(".btn-plus").on("click", function() {
				var now = $(".section > div > input").val();
				if ($.isNumeric(now)) {
					$(".section > div > input").val(parseInt(now) + 1);
				} else {
					$(".section > div > input").val("1");
				}
			})
		})
	</script>
	
	<%@ include file="nav.jsp"%><br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<div class="container">

		<%-- <%@ include file="loginHeader.jsp" %> --%>


		<div class="row">
			<div class="col-xs-5 item-photo">
				<img style="max-width: 50%; margin-top: 20px;"
					src="${pageContext.request.contextPath}/resources/images/${product.imgName}" />
			</div>
			<div class="col-xs-5" style="border: 0px solid gray">
				<!-- Datos del vendedor y titulo del producto -->
				<h3>${product.pname}</h3>

				<h4>Price - ${product.pcost} Rs.</h4>
				<h4>Supplier - ${product.supplier.supplierName}</h4>
				<div class="section" style="padding-bottom: 20px;">

					<form action="${pageContext.request.contextPath}/addToCart"
						method="post">
						<input type="hidden" value="${product.pid}" name="pid" /> <input
							type="hidden" value="${product.pcost}" name="pcost" /> <input
							type="hidden" value="${product.pname}" name="pname" /> <input
							type="hidden" value="${product.imgName}" name="imgName" /> <input
							type="number" class="form-control" value="${product.stock}" name="quant" required /><br>
						<input class="btn btn-primary btn-lg" type="submit"
							value="add to cart">
					</form>
					<h6>
						<span class="glyphicon glyphicon-heart-empty"
							style="cursor: pointer;"></span> Add Product
					</h6>
				</div>
			</div>

			<div class="col-xs-9">
				<ul class="menu-items">
					<h2>
						<li class="active">Details of ${product.pname}</li>
					</h2>

				</ul>
				<div style="width: 100%">
					<p style="padding: 15px;">
					<h3>${product.pdesc}</h3>
					</p>
					<small> </small>
				</div>
			</div>
		</div>
	</div>
	<br>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
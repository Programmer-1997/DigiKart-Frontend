
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<%@ page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/admin.css"/>">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">

		<ul class="nav md-pills nav-justified pills-secondary">
			<li class="nav-item"><a class="nav-link " href="productlist">Product
					List</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#panel2" role="tab">Category</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#panel3" role="tab">Supplier</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#panel4" role="tab">Product</a></li>
		</ul>




	</div>
	<!-- Tab panels -->
	<div class="tab-content">

		<%-- 	<!--Panel 1-->
		<div class="tab-pane fade in show active" id="panel1" role="tabpanel">
			<br>

			<p>
				<i><h3>
						<center>
							<font color="white">Hello Gagan! Lets get you started</font>
						</center>
					</h3></i>
			</p>

		</div>
		<!--/.Panel 1--> --%>

		<!--Panel 2-->
		<div class="tab-pane fade" id="panel2" role="tabpanel">
			<br>

			<div class="container">
				<h2>
					<center>
						<font color="black">Manage your Categories</font>
					</center>
				</h2>
				<br>
				<form action="${pageContext.request.contextPath}/admin/category"
					method="post" align="center">
					<div class="form-group">
						<label for="id"><font color="black">Category ID:</font></label> <input
							placeholder="Enter Id" name="catid"></input> <label for="name"><font
							color="black">Category Name:</font></label> <input
							placeholder="Enter category" name="categoryname"></input>
					</div>
					<div class="form-group">
						<label for="description"><font color="black">Description:</font></label>
						<input placeholder="Enter description" name="catdesc"></input>
					</div>

					<button class="btn btn-default">Submit</button>
				</form>
			</div>



		</div>
		<div class="tab-pane fade" id="panel3" role="tabpanel">
			<br>




			<div class="container">
				<h2>
					<center>
						<font color="white">Manage your Suppliers</font>
					</center>
				</h2>
				<br>
				<f:form action="${pageContext.request.contextPath}/admin/supplier"
					method="post" modelAttribute="supplier" align="center">
					<div class="form-group">
						<label for="name"><font color="black">Supplier
								Name:</font></label>
						<f:input placeholder="Enter name" path="supplierName"></f:input>
					</div>
					<div class="form-group">
						<label for="address"><font color="black">ID:</font></label>
						<f:input placeholder="supplier id" path="sid"></f:input>
					</div>

					<f:button class="btn btn-default">Submit</f:button>
				</f:form>
			</div>

		</div>




		<!--Panel 4-->
		<div class="tab-pane fade" id="panel4" role="tabpanel">

			<form class="form-signin"
				action="<c:url value="/admin/saveproduct"/>" method="post"
				enctype="multipart/form-data">

				<table align="center">
					<center>
						<h4>Product Details</h4>
					</center>


					<tr>
						<td class="input_title">Product Name</td>
						<td><input type="text" name="pname" class="form-control"
							required /></td>
					</tr>
					<tr>
						<div class="form-group">
							<td>Select Category</td>

							<td><select class="form-control" name="pCategory" required>

									<option value="">----Category---</option>

									<c:forEach items="${categorylist}" var="cate">
										<option value="${cate.categoryid}" required>${cate.categoryname}</option>
									</c:forEach>
							</select></td>
					</tr>
					</div>
					<tr>
						<div class="form-group">
							<td>Select Supplier</td>

							<td><select class="form-control" name="pSupplier" required>
									<option value="">----Supplier---</option>

									<c:forEach items="${supplierlist}" var="sate">
										<option value="${sate.sid}">${sate.supplierName}</option>


									</c:forEach>
							</select></td>
						</div>
					</tr>
					<tr>
					<tr>
						<td>Price</td>
						<td><input class="form-control" type="number" name="pcost"
							required /></td>
					</tr>
					<tr>
						<td>Description</td>
						<td><input class="form-control" type="text" name="pdesc"
							required /></td>
					</tr>
					<tr>
						<td>Stock</td>
						<td><input class="form-control" type="text" name="pstock"
							required /></td>
					</tr>

					<div class="fileinput fileinput-new" data-provides="fileinput">
						<tr>
							<td>Image</td>
							<td><input class="form-control" type="file" name="file"
								accept="images/*" /></td>
						</tr>
					</div>
					<tr>
						<td colspan="2"><center>
								<input type="submit" class="btn btn-lg btn-primary" />
								<button class="btn btn-lg btn-primary" type="reset">Cancel</button>

							</center></td>
					</tr>

				</table>
			</form>
		</div>

	</div>
	<div class="tab-pane fade" id="tab4primary">Primary 4</div>
	<div class="tab-pane fade" id="tab5primary">Primary 5</div>

	<!--/.Panel 4-->

	</div>
	</div>
</body>
</html>

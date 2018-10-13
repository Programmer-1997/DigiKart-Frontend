<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">
<c:url value="${pageContext.request.contextPath}/updateProduct" var="prp"></c:url>
<form action="productUpdate" method="post" enctype="multipart/form-data">
<table align="center">
<tr>
<td colspan="2"><center>Product Details</center></td>
</tr>
<tr>
<td><input type="hidden" name="pid" value="${product.pid }"/></td>
</tr>

<tr>
<td>Product Name</td>
<td><input type="text" name="pname" value="${product.pname }"/></td>
</tr>

<tr>
<td>SELECT CATEGORY</td>
<td><select name="pCategory">
<option value="0">------Category--------</option>
<c:forEach items="${categorylist}" var="cate">
<option value="${cate.categoryid }">${cate.categoryname}</option>

</c:forEach>
</select>
</td>
</tr>
<tr>
<td>Select Supplier</td>
<td><select name="pSupplier">
<option value="0">-----SUPPLIER------</option>
<c:forEach items="${supplierlist}" var="sate" >
<option value="${sate.sid }">${sate.supplierName}</option>

</c:forEach>
</select>
 </td>
 </tr>
 <tr>
 <td>Cost</td>
 <td><input type="text" name="pcost" value="${product.pcost }"/></td>
 </tr>
 <tr>
				<td>Description</td>
				<td><input  type="text" name="pdesc"  value="${product.pdesc}" required/></td>
			</tr>
<tr>
<tr>
		<td>Stock</td>
		<td><input type="text" name="pstock" value="${product.stock }" required/></td>
		</tr>
		
				<tr>
				<td>Image</td>
				<td><input type="file" name="file" /></td>
			</tr>
			<tr>
				<td colspan="2"><center>
						<input type="submit" />
					</center></td>
			</tr>
					
 



</table>

</form>
</div>
<br/>
</body>
</html>
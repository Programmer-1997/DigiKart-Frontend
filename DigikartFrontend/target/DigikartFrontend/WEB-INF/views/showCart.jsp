<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link
href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
rel="stylesheet">
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




<div class="container">

<h4><img alt="" src="${pageContext.request.contextPath}/resources/block-cart-icon.png"> &nbsp; YOUR CART  </h4>
<table id="cart" class="table table-hover table-condensed">
<thead>
<tr>
<th>Product Name</th>
<th>Quantity</th>
<th>Price</th>
<th>Image</th>
<th>Total</th>
<th>Action</th>
</tr>
</thead>


<tbody>
<c:if test="${empty cartInfo}">
                            <tr>
                                <td colspan="9" align="center">No Record Exists</td>
                            </tr>
                        </c:if>
<c:forEach var="c" varStatus="st" items="${cartInfo}">
                            <tr>
                                
                                <td><c:out value="${c.cartProductName}"></c:out></td>
                                <td><c:out value="${c.cartQuantity}"></c:out></td>
                                <td><c:out value="${c.cartPrice}"></c:out></td>
                                
                       
                               
                                
                                
                                <td><img src="${pageContext.request.contextPath}/resources/image/<c:out value='${c.cartImage}'></c:out>" height="50px" width="50px"/></td>
                                
                                                                <td><c:out value="${c.cartQuantity * c.cartPrice}"></c:out></td>
                                <td><a  href="${pageContext.request.contextPath}/deletePCart/${c.cartId}" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></a></td>
                           
                            </tr>
                        </c:forEach>


</tbody>
<tfoot>
<tr>
<td><a href="${pageContext.request.contextPath}/index" class="btn btn-warning"><i
class="fa fa-angle-left"></i> Continue Shopping</a></td>
<c:if test="${not empty cartInfo}">
<td><a href="${pageContext.request.contextPath}/checkout" class="btn btn-success btn-block">Checkout
<i class="fa fa-angle-right"></i>
</a></td></c:if>
</tr>
</tfoot>
</table>
<div><br/><br/><br/></div>
</div>
</body>
</html>
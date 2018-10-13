<%@ taglib prefix="j" uri="http://java.sun.com/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>

</head>
<body>
            <jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<br>
<br>
<div class="container">
  <h2>Product List</h2>
  <p>The Page of the Product list</p>  

<c:if test="${param.save!=null}">
                        SUCCESS: Contact Saved.
                    </c:if>
                    <c:if test="${param.del!=null}">
                        SUCCESS: Product Deleted.
                    </c:if>
                    <c:if test="${param.update!=null}">
                        SUCCESS: Product Updated.
                    </c:if>
<table   class="table table-hover" id="category" class="display" border="1" width="80%" align="center">
                        <tr>
                            <th>SR</th>
                            <th>PID</th>
                            <th>NAME</th>
                             <th>Supplier</th>
                             <th>Category</th>
                             <th>price</th>
                             <th>Stock</th>
                             <th>Description</th>
                              <th>Image</th>
                              
                        </tr>
                        <c:if test="${empty custProducts}">
                            <tr>
                                <td colspan="9" align="center">No Record Exists</td>
                            </tr>
                        </c:if>
                        <c:forEach var="c" varStatus="st" items="${custProducts}">
                            <tr>
                                <td><c:out value="${st.count}"></c:out></td>
                                <td><c:out value="${c.pid}"></c:out></td>
                                <td><c:out value="${c.pname}"></c:out></td>
                                <td><c:out value="${c.supplier.supplierName}"></c:out></td>
                                <td><c:out value="${c.category.categoryname}"></c:out></td>
                                <td><c:out value="${c.pcost}"></c:out></td>
                                <td><c:out value="${c.stock}"></c:out></td>
                                <td><c:out value="${c.pdesc}"></c:out></td>
                                
                                <td><a href="${pageContext.request.contextPath}/productDescription/${c.pid}">
                                <img  src="${pageContext.request.contextPath}/resources/images/<c:out value='${c.imgName}'></c:out>" height="50px" width="50px"/></a></td>
                                
                                
                            
                            </tr>
                        </c:forEach>
                    </table>
                    </div>
    <br>
    <br>                
                                <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
                    
</body>

</html>
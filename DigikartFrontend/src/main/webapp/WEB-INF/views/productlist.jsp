<%@ taglib prefix="j" uri="http://java.sun.com/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

.err{
color: red;
}
.success{
color: blue;

}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>


</head>
<body>
            <jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<br>
<br>
<div class="container">
  <h2>Product List</h2>
  <p>The Page of the category list</p>  


<c:if test="${param.save!=null}">

                    <center class="success">SUCCESS: Product Saved.</center>
                    </c:if>
                    <c:if test="${param.del!=null}">
                       <h4 class="err" > SUCCESS: Product Deleted.</h4>
                    </c:if>
                    <c:if test="${param.update!=null}">
                      <h4 class="success"> SUCCESS: Product Updated.</h4>
                    </c:if>


<table class="table table-hover" id="category" class="display" border="1" width="80%" align="center">
                        <tr>
                            <th>SR</th>
                            <th>PID</th>
                            <th>NAME</th>
                           
                           
                             <th>Supplier</th>
                             <th>Category</th>
                             <th>price</th>
                             <th>quantity</th>
                             <th style="width:20%">Description</th>
                              <th>Image</th>
                              <th class="span2">Action</th>
                        </tr>
                        <c:if test="${empty productlist}">
                            <tr>
                                <td colspan="7" align="center">No Record Exists</td>
                            </tr>
                        </c:if>
                        <c:forEach var="c" varStatus="st" items="${productlist}">
                            <tr>
                                <td><c:out value="${st.count}"></c:out></td>
                                <td><c:out value="${c.pid}"></c:out></td>
                                <td><c:out value="${c.pname}"></c:out></td>
                                 <td><c:out value="${c.supplier.supplierName}"></c:out></td>
                              <td><c:out value="${c.category.categoryname}"></c:out></td>
                                <td><c:out value="${c.pcost}"></c:out></td>
                                <td><c:out value="${c.stock}"></c:out></td>
                                <td class="span2" ><c:out value="${c.pdesc}"></c:out></td>
                                <td><img src="${pageContext.request.contextPath}/resources/images/${c.imgName}" height="50px" width="50px"/></td>
                           
 
    <td>
                           
                            <c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
                            <a class="btn btn-info" role="button" href="<c:url value="/admin/deleteproduct/${c.pid}"/>">Delete</a>
			<a  class="btn btn-info" role="button" href="${contextRoot}/admin/updateProduct?id=<c:out value="${c.pid}"> </c:out>">Update</a>
<%-- 			<a href="<c:url value="/admin/updateProduct1/<c:out value=''></c:out>"/>">Update</a>
 --%>                                </td> 
                                
                            
                            </tr>
                        </c:forEach>
                    </table>
                    
                    
    <br>
    <br>  
       
    </div>           
                                <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
                    
</body>

</html>
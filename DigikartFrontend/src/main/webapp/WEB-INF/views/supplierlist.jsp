<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier List</title>


</head>
<body>
            
<br>
<br>
<div class="container">
  <h2>Supplier List</h2>
  <p>The Page of the Supplier list</p>            
<table class="table table-hover" id="category" class="display" border="1" width="80%" align="center">
                        <tr>
                            <th>SR</th>
                            <th>SID</th>
                            <th>NAME</th>

                        </tr>
                        <c:if test="${empty supplierlist}">
                            <tr>
                                <td colspan="7" align="center">No Record Exists</td>
                            </tr>
                        </c:if>
                        <c:forEach var="c" varStatus="st" items="${supplierlist}">
                            <tr>
                                <td><c:out value="${st.count}"></c:out></td>
                                <td><c:out value="${c.sid}"></c:out></td>
                                <td><c:out value="${c.supplierName}"></c:out></td>
                                
                                
                         
                            </tr>
                        </c:forEach>
                    </table>
                    
    <br>
    <br>      
    </div>
              
                                
                    
</body>

</html>
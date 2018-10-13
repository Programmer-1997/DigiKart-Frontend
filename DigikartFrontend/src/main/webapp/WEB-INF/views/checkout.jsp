 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.outer, .inner {
    display: block;
}


.inner {
    /* specify padding, can be changed while remaining fixed width of .outer */
    padding: 10px;
    margin: 10px 0px;
    background-color: #f2f2f2;
    width:70%;
    font-family: sans-serif;;


}
.head{
  background-color:#cc3333;
   height:40px;
   width:100%;
   margin:0 0 20px 0;
  border-radius: 5px;
  font-family: Gotham;
  padding-left: 10px;
  color: white;


}
.mytext{
  vertical-align: middle;
  line-height: 40px;
}
#order{
  background-color: #cc3333;
  color:white;
  padding-left: 20px;
  padding-top: 10px;
}
.tbSum th{
  font-size: 20px;
  font-weight: bold;
  font-family: sans-serif;
  background-color:#cc3333;
  color: white;
}

.tbSum td{
  font-size: 20px;
  font-weight: bold;
}
</style>
</head>
<body>
           <%--  <jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include> --%>

  <div class="container">

        <div class="row">
          <div class="col-xs-6 jumbotron"><!--1st column-->
          <div class="head">
            <h3><p class="mytext">Customer Details</p></h3>
          </div>

          <div class="outer">
            <div class="well" style="width:100%">
     <form action="${pageContext.request.contextPath}/invoiceprocess"  method="post">
            
            <c:set var="srk2" value="0"></c:set>
    <c:forEach var="c" items="${cart}">
        <c:set var="srk2" value="${srk2 + c.cartPrice * c.cartQuantity }"></c:set>   
                
              </c:forEach>  
                <div class="well">
                 <table class="tbdetail">
		<%-- 	 <label>Name</label>&nbsp;<input type="text" id="custname" value="${user.name}"  style="width:70%" disabled><br><br>
             <label>Email</label> &nbsp;    <input type="text"id="emailid"  value="${user.id}"  style="width:70%" disabled><br><br>
              <label>Phone</label> &nbsp;   <input type="text" id="phoneid" value="${user.phone}"  style="width:70%" disabled><br><br>
			  <label>Address</label>&nbsp;  <input type="text" id="custaddress"  value="${user.address}" style="width:70%" disabled><br><br>
              <label>Total Amount</label>
              <label style="width:70%">${srk2}</label><br><br> --%>
                <tr>
              <td colspan="3"><b>Name</b></td>
              <td>${user.username}</td>
              </tr>
              <tr>
              <td colspan="3"><b>Email</b></td>
              <td>${user.email}</td>
              </tr>
              
              <tr>
              <td colspan="3"><b>Customer Address</b></td>
              <td>${user.address}</td>
              </tr>
              
               <tr>
              <td colspan="3"><b>Total Amount</b></td>
              <td>${srk2}</td>
              </tr>
             
             
              </table>
                  </div>
                    <div style="margin-top:10px">
                  <h3 ><strong>Enter card details</strong>
                 </h3>
                </div>
                <input type="hidden" name="total"  value="${srk2}" >
             
             <div class="well">
             <label>Payment</label><br>
             <select name="payment">
    <option value="COD">Cash on Delivery</option>
    <option value="NetBanking">Net Banking</option>
</select>
               

  
  <div><br></div>
                <input type="text" name="cardnum" placeholder="Enter your card number" style="width:70%"><br>
                <br>
                <input type="text" name="name" placeholder="Name on the card" style="margin-bottom:10px;width:70%"><br>
                   <div>
                     <table>
                       <tr><th colspan="2">Expiry</th>
                         <th>&nbsp;&nbsp;&nbsp;&nbsp;</th>
                       <th>CVV</th></tr>
                       <tr><td colspan="2">  <input type="number" min="1" max="12" name="month" placeholder="mm" style="width:50px">
                         <input type="number" min="1" max="12" name="year" placeholder="yy" style="width:50px"></td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td>
<!--                 <input type="text" name="cvv" placeholder="CVV" style="width:40px" minlength="3" maxlength="3">
 -->              </td></tr>


                </table>
                </div>
              </div><!-- inner end card number-->
              <input type="submit"  value="PROCEED" style="width:75%; font-size:20px;" class="btn btn-success">
         </form>
         </div>
          </div>
        </div>


      </div><!--end of 1st column-->

      </div><!--end of row-->
      
      <div><br></div>
    </div><!--end of container-->
    <br>
        <br>
        <br>
        <br>
        <br>
        
            <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>

</html>
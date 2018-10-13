<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="nav.jsp"></jsp:include>
  <div class="container">
  <div><br/><br/><br/></div>
        <div class="row">
          <div class="col-md-10 jumbotron">
           <div class="head">
            <h3>Customer Details</h3>
          </div>

            <div style="width:100%">
      <form action="${pageContext.request.contextPath}/invoiceprocess"  method="post">
               <c:set var="calc" value="0"></c:set>
    <c:forEach var="c" items="${cart}">
        <c:set var="srk2" value="${calc + c.cartPrice * c.cartQuantity }"></c:set>   
                
              </c:forEach> 
             
               <input type="hidden" name="total"  value="${calc}" >
              <div class="well">
              <table class="tbdetail">
              <tr>
              <td colspan="3"><b>Name</b></td>
              <td>${user.name}</td>
              </tr>
              <tr>
              <td colspan="3"><b>Email</b></td>
              <td>${user.id}</td>
              </tr>
              <tr>
              <td colspan="3"><b>Phone</b></td>
              <td>${user.phone}</td>
              </tr>
              <tr>
              <td colspan="3"><b>Customer Address</b></td>
              <td>${user.address}</td>
              </tr>
              
               <tr>
              <td colspan="3"><b>Total Amount</b></td>
              <td>${calc}</td>
              </tr>
              </table>
              
          </div>
          <div>
          </div>
                      

                <div style="margin-top:10px">
                  <h3 ><strong>Enter card details</strong>
                 </h3>
                </div>
                
               

      <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"> 
                    <div>
                     Payment Mode
                    <select name="payment">
    <option value="COD">Cash on Delivery</option>
                    <option value="NetBanking">Net Banking</option>
                    </select>
                    </div>
                 </div>
                 
                 
                 </form>
                <div class="panel-body">             
                        <label for="cardNumber">
                            CARD NUMBER</label>
                            <br/>
                      
                    
                <input type="text" name="cardnum" placeholder="Enter your card number" style="width:70%"><br>
                <br>
                <label for="cardNumber">
                    Card Holder</label>
                            <br/>
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
                <input type="text" name="cvv" placeholder="CVV" style="width:40px" minlength="3" maxlength="3">
              </td></tr>


                </table>
                </div>
              </div><!-- inner end card number-->
                  
                </div>
            </div>
            </div>
            </div>
           
            <br/>
              <input type="submit"  value="PROCEED" style="width:55%; font-size:20px;" class="btn btn-success">
                
        </div>
    </div>
     </div>
    
     
     </body>
</html>€‹
     
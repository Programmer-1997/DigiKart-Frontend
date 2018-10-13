<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/css/register.css">
<title>Sign-up page</title>
</head>
<body>
<font face="" align="center"><h1><i><b><h2></h2></b></i></h1></font>
<f:form action="saveRegister" method="post" modelAttribute="cmd">
<div class="container">

<hr>
<label for="username"><b>FULL NAME:</b></label>
<f:input type="text" placeholder="enter name" path="username" align="middle" required="required"></f:input>




<label for="address"><b>ADDRESS:</b></label>
<f:input  type="text" placeholder="enter address" path="address" align="middle" required="required"></f:input>



<label for="email"><b>EMAIL:</b></label>
<f:input  type="text" placeholder="enter Username" path="email" align="middle" required="required"></f:input>


<label for="Password"><b>PASSWORD:</b></label>
<f:input type="password" placeholder="enter password" path="password" align="middle" required="required"/>


<div class="clearfix">
      <button type="button" class="cancelbtn">CANCEL</button>
      <button type="submit" class="signupbtn">SIGN UP</button>
    </div>
    </div>
</f:form>
</body>
</html>
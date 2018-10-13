<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
            <%-- <jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include> --%>


	<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Thank you for purchasing!</h1>

                    
                </div>
            </div>
        </section>

        <section class="container">
          <!--   <p>
                <a href="home" class="btn btn-default">OK</a>
            </p> -->
            
<form method="post" action="index">

<button type="submit" class="btn btn-primary" name="_eventId_re">Ok</button>
</form>
        </section>

    </div>
</div>
	            <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
	
	
</body>
</html>
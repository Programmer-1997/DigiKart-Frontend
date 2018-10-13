<%@ taglib prefix="j" uri="http://java.sun.com/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:url value="/resources/vendor"></c:url>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.theme.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
 <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-select.min.css"/>">
 <link rel="stylesheet" href="<c:url value="/resources/css/style.default.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/custom.css"/>">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="<c:url value="/resources/vendor/popper.js/umd/popper.min.js"/>"> </script>
<script src="<c:url value="/resources/vendor/jquery.cookie/jquery.cookie.js"/>"> </script>
    <script src="<c:url value="/resources/vendor/waypoints/lib/jquery.waypoints.min.js"/>"> </script>
    <script src="<c:url value="/resources/vendor/jquery.counterup/jquery.counterup.min.js"/>"> </script>
    <script src="<c:url value="/resources/vendor/owl.carousel/owl.carousel.min.js"/>"></script>
    <script src="<c:url value="/resources/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.parallax-1.1.3.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap-select.min.js"/>"></script>
    <script src="<c:url value="/resources/vendor/jquery.scrollto/jquery.scrollTo.min.js"/>"></script>
    <script src="<c:url value="/resources/js/front.js"/>"></script>
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>

      <div id="heading-breadcrumbs">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
              <h1 class="h2">Category Full</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">Category Full</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div id="content">
        <div class="container">
          <div class="row bar">
            <div class="col-md-12">
              <p class="text-muted lead text-center">In our digital department we offer wide selection of the best products we have found and carefully selected worldwide. Pellentesque habitant morbi tristique senectus et netuss.</p>
              <div class="products-big">
                <div class="row products">
                  <div class="col-lg-3 col-md-4">
                    <div class="product">                    
                      <div class="image">
                      <c:forEach var="c" varStatus="st" items="${custProducts}">
                      <a><img src="${pageContext.request.contextPath}/resources/images/<c:out value='${c.imgName}'></c:out>" alt="" class="img-fluid image1"></a></div>
                      <div class="text">
                        <h3 class="h5"><a><c:out value="${c.pname}"></c:out></a></h3>
                        <p class="price"><a><c:out value="${c.pcost}"></c:out></a></p>
                        
                      </div>
                      </c:forEach>
                    </div>
                  </div>
                  </div>
                  </div>
                  </div>
                  </div>
                  </div>
                  </div>
</body>
</html>
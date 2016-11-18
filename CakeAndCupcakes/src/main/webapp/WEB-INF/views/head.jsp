<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false"%>
<%-- <%@ include file="/WEB-INF/views/head.jsp" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cupcake Caffe</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
body
h6  {
     color: grey;
     font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	 font-size: 20px;
 }
</style>
</head>

 <body>
<nav class="navbar navbar-inverse">
    <div class="navbar-header">
    	<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
   
    </div>
    <div class="collapse navbar-collapse js-navbar-collapse">
		<ul class="nav navbar-nav">
		<li class="dropdown mega-dropdown"><a href="/CakeAndCupcakes/"><img src="resources/images/caac-logo.png" width="50" height="50"  alt="Image"></a></li>
		<li class="dropdown mega-dropdown"><a href="aboutus">About Us</a>
		<li class="dropdown mega-dropdown"><a href="contact">Contact</a></li></li>
         <c:forEach items="${categoryList}" var="category">
       <li class="dropdown mega-dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">${category.name}<span class="caret"></span></a>
        <ul class="dropdown-menu mega-dropdown-menu">
        <li class="col-sm-3">
						
              <c:forEach items="${category.sub_category}" var="sub_category">
            <li><a href="productlist?search=${sub_category.id}">${sub_category.name}</a></li>          
            </c:forEach>
          </ul>
          
          </c:forEach>
          
          </ul>
           
     
     
      <ul class="nav navbar-nav navbar-right">
        <c:if test="${pageContext.request.userPrincipal.name!= null}">
			<h6>Welcome ${pageContext.request.userPrincipal.name}</h6> 
		
</c:if>
         
         <sec:authorize access="isAnonymous()">
        <li><a href="login"><span class="glyphicon glyphicon-login"  data-toggle="collapse"  aria-expanded="false" aria-controls="nav-collapse2"></span> Login</a></li>
        <li><a href="users"><span class="glyphicon glyphicon-sign-up"></span> Sign Up</a></li>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
         <li><a href="<c:url value="/logout" />">Logout</a></li>
         </sec:authorize>
      </ul>
     
    </div>  
</nav> 
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
	<%@ include file="/WEB-INF/views/head.jsp" %> 
<!-- Css -->
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/images" var="images" />
<!-- JavaScript -->
<spring:url value="/resources/js" var="js" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<head>
  <title>Shipping Address</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
  <style>

body {
position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 10px;
	width: auto;
	height: auto;
	background-image:  url("resources/images/caac-logo2.png");
	background-size: cover;
     
     
}
 h1{
  color: #c81474;
    /* font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	font-size: 20px;
	font-style: italic; */
  
  }
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
    <div class="col-md-5 col-md-offset-3">
		<div class="content">
			<div class="container">
				<!-- <div class="jumbotron"> -->
					<h2>Order Confirmed,Product will be delivered shortly.</h2>
					<div class="col-md-offset-2">
					<h1>Thank you!</h1></div>
					<form:form>
					<div class="col-md-offset-3">
					<input type="submit" name="_eventId_finalHome"  value="Home" class="btn btn-sm btn-info">
					</div>
					</form:form>
					
				
				</div>


			</div>
		</div>
		<%-- <%@include file="../shared/footer.jsp"%> --%>
	</div>
</body><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<%@ include file="/WEB-INF/views/footer.jsp" %>
</html>
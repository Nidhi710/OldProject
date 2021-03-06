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
  <title>Card Details</title>
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
	/* background-image:  url("resources/images/cupcake-pp6.jpg");
	background-size: cover; */
     
     
}
</style>
</head>
<body>
	<div class="container-fluid">

   <div class="row">
    <div class="col-md-7 col-md-offset-3">
		<div class="content">
		<div class="panel-"><h3>Fill the Card Details</h3></div>
			<div class="panel panel-default">
				
				<div class="panel-body">
					<form:form class="form-horizontal" modelAttribute="cartDetail">
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Card Number</label>
							<div class="col-sm-7">
							<form:errors path="cardNumber" class="error"/>
								<form:input path="cardNumber" autofocus="true" type="text" pattern="^[0-9]+$" title="Enter a valid card no" required="true" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Expiry Month</label>
							<div class="col-sm-2">
							<form:errors path="expiryMonth" class="error"/>
								<form:select path="expiryMonth" id="" class="form-control">
									<option value="" disabled selected>MM</option>
									<form:option value="1">Jan</form:option>
									<form:option value="2">Feb</form:option>
									<form:option value="3">Mar</form:option>
									<form:option value="4">Apr</form:option>
									<form:option value="5">May</form:option>
									<form:option value="6">Jun</form:option>
									<form:option value="7">July</form:option>
									<form:option value="8">Aug</form:option>
									<form:option value="9">Sep</form:option>
									<form:option value="10">Oct</form:option>
									<form:option value="11">Nov</form:option>
									<form:option value="12">Dec</form:option>
								</form:select>
							</div>
						
							<label for="" class="control-label col-sm-2">Expiry Year</label>
							<div class="col-sm-2">
							<form:errors path="expiryYear" class="error"/>
								<form:select path="expiryYear" name="" id=""
									class="form-control">
									<option value="" disabled selected>Year</option>
									<form:option value="16">16</form:option>
									<form:option value="17">17</form:option>
									<form:option value="18">18</form:option>
									<form:option value="19">19</form:option>
									<form:option value="20">20</form:option>
									<form:option value="21">21</form:option>
									<form:option value="22">22</form:option>
									<form:option value="23">23</form:option>
									<form:option value="24">24</form:option>
									<form:option value="25">25</form:option>
									<form:option value="26">26</form:option>
									<form:option value="27">27</form:option>
								</form:select>
							</div>
						</div>
						<div class="form-group">
						     <label for="" class="control-label col-sm-2">Card Name</label>
							<div class="col-sm-3">
							<form:errors path="nameOnCard" class="error"/>
								<form:input path="nameOnCard" type="text" class="form-control" />
							</div>
																		
							<label for="" class="control-label col-sm-2">CVV Number</label>
							<div class="col-sm-2">
							<form:errors path="cvNumber" class="error"/>
								<form:input path="cvNumber" type="text" pattern="^[0-9]{4}$" tilte="Enter a 4 digit ccv" class="form-control" />
							</div>									
																				
						</div>
						<div class="col-md-offset-3">
							<input type="submit" value="Checkout"
								name="_eventId_confirmCheckout" class="btn btn-md btn-success">
							<!-- <input type="submit" value="Cancel" name="_eventId_cancel"
								class="btn btn-md btn-danger"> -->
						</div>

					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
</div><br><br>
</body>


</html>
<%@ include file="/WEB-INF/views/footer.jsp" %> 

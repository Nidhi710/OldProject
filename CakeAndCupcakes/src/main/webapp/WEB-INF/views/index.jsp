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
 
  {
position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	width: auto;
	height: auto;
	background-image:  url("resources/images/download.jpg");
	background-size: cover;
     
     
}
 .navbar:hover:{
      background-color: white;
  border-color: #ad4497;
  border-radius: 0;
  hover-color:#ad4497;
    } *
 h3 {
    color: #c81474;
    font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	font-size: 47px;
	font-style: italic;
	font-variant: normal;
	font-weight: 100;
	line-height: 53.2px;
}
p{
color:black
}
  h4{
  color: #c81474;
    font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	font-size: 20px;
	font-style: italic;
  
  }
 h2  {
     color: #ee87c8;
     font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	 font-size: 30px;
 }
 h6  {
     color: grey;
     font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	 font-size: 20px;
 }
 p {
    font-family: Arial;
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 20px;
	
}
hr{
color:#c2298f

}

 div {
    
    text-align: justify;
}
 
    /* Remove the navbar's default margin-bottom and rounded borders */
    /* .navbar {
    background-color:#c2298f
      margin-bottom: 0;
      border-radius: 0;
    } */
  li{
    font-family: Arial;
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 20px;
    
  }
  
  
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
      ul {list-style-type: square;}
      
    }
    i{
    font-family: Arial;
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 20px;
  }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none;
    }
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
		<li class="dropdown mega-dropdown"><a href=""><img src="resources/images/caac-logo.png" width="50" height="50"  alt="Image"></a></li>
		<li class="dropdown mega-dropdown"><a href="aboutus">About Us</a></li>
		<li class="dropdown mega-dropdown"><a href="contact">Contact</a></li>
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
			<h6> Welcome ${pageContext.request.userPrincipal.name}</h6> 
		
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

   <sec:authorize access="hasRole('ROLE_ADMIN')">
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
      <li class="active">
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
     
      <li><a href="categories">Category</a></li>
      <li><a href="suppliers">Supplier</a></li>
      <li><a href="sub_categories">Sub Category</a></li>
      <li><a href="products">Product</a></li>
     
    </ul>
   
    </div>
</nav>
 
</sec:authorize>




<div>
<div class="row">
  <div class="col-sm-8">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1">
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="resources/images/max.jpg" alt="Image">
          <div class="carousel-caption">
            <!-- <h3 class="italic">CUPCAKES DELIVERED NEXT DAY</h3> -->
           
          </div>
        </div>

        <div class="item">
          <img src="resources/images/71.jpg" class="img-responsive" alt="Image">
          <div class="carousel-caption">
           <!--  <h3>TONS OF FLAVOUR </h3> -->
            
          </div>
        </div>
        
         <div class="item">
          <img src="resources/images/2.jpg" class="img-responsive" alt="Image">
          <div class="carousel-caption">
            <!-- <h3>TONS OF FLAVOUR </h3> -->
            
          </div>
        </div>
         
      </div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>
  
     
    
  <div class="col-sm-4">
  
      <div class="container text-center">    
<div class="row">
<div class="col-sm-8">
     

<section id="wrapper">
	
		<div class="col-md-6">
   			<div id="private_label" class="panel panel-default"  class="carousel slide" data-ride="carousel">
				<div class="alert alert-danger"><h2>Flavour Of Month!</h2></div>	
	           
              <div class="panel-body" style="padding: 0px;">
				
						<div class="carousel-inner">
				
					
							<ol class="carousel-indicators">
								<li data-target="#private_label" data-slide-to="0" class="active"></li>
								<!-- <li data-target="#private_label" data-slide-to="1"></li>
								<li data-target="#private_label" data-slide-to="2"></li> -->
								<!-- <li data-target="#private_label" data-slide-to="3"></li>
								<li data-target="#private_label" data-slide-to="4"></li>
								<li data-target="#private_label" data-slide-to="5"></li>
								<li data-target="#private_label" data-slide-to="6"></li>
								<li data-target="#private_label" data-slide-to="7"></li> -->
							</ol>
					
						

							<div class="item active">
								<img src="resources/images/bluberries-and-cream-cupcakes.jpg" alt="1 slide">
							</div>
							
							<!-- <div class="item">
								<img src="resources/images/bluberries-and-cream-cupcakes.jpg" alt="2 slide">
							</div>
							
							<div class="item">
								<img src="resources/images/corporate-cupcakes-3.jpg" alt="3 slide">
							</div>	 -->
							<%-- <center><img src="resources/images/blueberry-close-up.jpg" class="img-circle" alt="Cinque Terre" width="304" height="260"></center> --%>
					
						</div>	
										
				     </div>
				</div>
				<center><a href="productview327"><h4>Blueberry Cupcake</h4></a></center>
				<center> <p>Great celebrations this month... Have you ordered your cupcakes ? Every party should have some yummy cakes! .</p>
			</div>				
		</div>
					
 </section>
 
  </div>
   </div>
   </div>
   </div>
   </div>
      
  <%-- <h2><center>Flavour of the Month!</center></h2>
  
  <center><img src="resources/images/blueberry-close-up.jpg" class="img-circle" alt="Cinque Terre" width="304" height="260"></center>
<center><a href="productview327"><h4>Blueberry Cupcake</h4></a></center>
      
     <center> <p>Great celebrations this month... Have you ordered your cupcakes ? Every party should have some yummy cakes! .</p>
      <!-- </div>
      <div class="well">
      <div class="col-sm-4"> -->
       <p>It's that time of year again! Combine with some of our blueberry cupcakes for that lazy summer's day feeling... .</p>
     </center> </div>
     
    </div>
  </div>
</div>
</div> --%>
<hr>

  
<div class="container text-center">
  <h3>Beautiful handmade cupcakes</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <img src="resources/images/5.jpg" class="img-responsive" style="width:100%" alt="Image">
       <h2>Seasonal</h2>
      <p>Designed with flair and created with loving attention to details, our seasonal range for all those special times of year is not to be missed!</p>
    </div>
    
    <div class="col-sm-4">
      <img src="resources/images/Nut.jpg" class="img-responsive" style="width:100%" alt="Image">
      <h2>Coporate</h2>
      <p>We have a leading reputation for promotional products decorated with logos and company colours. Exceptional quality and service is assured with our branded cupcakes. </p>
      </div>
      
    <div class="col-sm-4">
      <img src="resources/images/6.jpg" class="img-responsive" style="width:100%" alt="Image">
      <h2>Parties</h2>
      <p>Make an order with a fabulous selection of cupcakes, freshly roasted almond cupcakes.
      </div>
    <br>
  </div>
 </div>
<div class="alert alert-danger"> <center><h3>Varities of Flavours</h3></center></div>
  <%@ include file="/WEB-INF/views/productdisplay.jsp"%> 
 <div class="container text">
<!-- <footer class="container-fluid text">
   
    <div class="row">
    <div class="col-sm-4">
    
   <h4>Our Philosophy</h4>
  <p>We produce cupcakes and other baked goods from the finest carefully sourced ingredients. We don't outsource our baking or decorating everything is done by our fantastic production team.</p>
  <p>Our philosophy is to create beautiful handmade cupcakes that taste as good as they look. Try one and see for yourself!</p><br>
   <i class="fa fa-facebook-square" style="font-size:35px"></i>
	<i class="fa  fa-google-plus-square" style="font-size:35px"></i>
	<i class="fa fa-twitter-square" style="font-size:35px"></i>
	<i class="fa  fa-linkedin-square" style="font-size:35px"></i> 
   </div>
   
    <div class="col-sm-4">
    <h4>Key Featurs</h4>
    <ul class>
    <li>Perfect for gifts and parties</li>
    <li>Bespoke options for corporate events</li>
    <li>Add a gift message to your order</li>
</ul>
</div>

	<div class="col-sm-4">
    <h4>Contact Us</h4>
    <i class="fa    fa-phone" style="font-size:24px;"></i>       Call us on: 8955415454<br>
    <i class="fa   fa-envelope" style="font-size:24px;"></i>     Email us on: contact@cupcake.com<br> 
    <i class="fa   fa-facebook" style="font-size:24px;"></i>   Visit us on Facebook<br>
    <i class="fa   fa-twitter" style="font-size:24px;"></i>    Join us on Twitter <br>
    </div>
    
</div> 
</footer>  -->
</div>
</body>
<!-- <script>
	var myProduct = angular.module('myProduct', []);
	myProduct.controller('productDisplay', function($scope, $http, $location) {
		$scope.product = ${productdisplay};
		
	});
</script> -->
 
<%@ include file="/WEB-INF/views/footer.jsp" %>
</html>

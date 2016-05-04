<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  	<link rel="stylesheet" href="<c:url value='resources/css/bootstrap.min.css'/>">
  	<script src="<c:url value='resources/js/jquery.min.js'/>"></script>
  	<script src="<c:url value='resources/js/bootstrap.min.js'/>"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

		.navbar
		{
			background-color: black;
			color: red;

		}
		.navbar li a
		{
			color: red !important;
		}
		.navbar li a:hover
		{
			color: white !important;
		}
		
		
		mg-image img 
		{

    		-o-transition: all 1s ease; /* IE 9 */

		}
		.mg-image:hover img 
		{

    		-ms-transform:scale(3.25); /* IE 9 */

		}
		/* just apply some height and width to the wrapper.
		.mg-image 
		{
  			width:500px;
  			height:600px;
 			overflow: auto;
		}
	</style>

</head>


<body>
	<div class="navbar navbar-default">
		<ul class="nav navbar-nav">
			<li><a href="<c:url value='/index'/>">HOME</a></li>
			<li class="dropdown"><a data-toggle="dropdown" href="<c:url value='/Product'/>">PRODUCTS<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<c:url value='/Hand'/>">HAND BAG</a></li>
					<li><a href="<c:url value='/Luggage'/>">LUGGAGE BAG</a></li>
					<li><a href="<c:url value='/Laptop'/>">LAPTOP BAG</a></li>
				</ul>
				
			</li>
			<li  class="active"><a href="<c:url value='/About'/>">ABOUT US</a></li>
			<li><a href="<c:url value='/Contact'/>">CONTACT US</a></li>
		</ul>
		
	    <ul class="nav navbar-nav navbar-right" style="margin-right: 70px">
		
			<li><a href="<c:url value='/Login'/>"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
			<li><a href="<c:url value='/Register'/>">REGISTER</a></li>
		</ul>
	</div>
	<center>
	<table class="table table-bordered">
	<tr>
	<div class="mg-image">
   		<img  src="resources/images/hand2.jpg" alt="Beige Leather Handbag" height="300" width="250"/>
   	</div>
	</tr>
	<tr>
	
	</tr>
	<tr>
	
	</tr>
	<tr><h3>
			<p >Name  :  Beige Leather Handbag</p>
			<p >Price : Rs. 7499</p>
			</h3>
	</tr>
	<tr>
		<h4 >
			Material   			: 	Leather</h4><h4>
			Product Dimensions  :  	6*4.3*0.5</h4><h4>
			USP 				:	Directly From Brand NEXT In UK -Prices Are Inclusive Of Duties</h4><h4>
			Color				:	Beige</h4><h4>
			Package Contents	:	4 Handbag</h4><h4>
			SKU					:	NE988BG31SMYINDFAS</h4><h4>
			Model Stats			:	The mannequin used in the image is 5'7" tall.</h4>
</p>
		
	</tr>
	
	</table>
	</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
<head>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  	<link rel="stylesheet" href= "https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css">
 	<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.0.2/css/responsive.bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.2/angular.js"></script>
	
  	<link rel="stylesheet" href="<c:url value='resources/css/bootstrap.min.css'/>">
  	<script src="<c:url value='resources/js/jquery.min.js'/>"></script>
  	<script src="<c:url value='resources/js/bootstrap.min.js'/>"></script>
  	
  	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
  	
  	<style>
	
	.dropdown-menu
	{
		background-color: black;
			color: blue;
			
	}
		
		.navbar
		{
			background-color: black;
			color: red;
			margin-left: 150px;
		}
		.navbar li a
		{
			color: red !important;
		}
		.navbar li a:hover
		{
			color: white !important;
		}
		
		.carousel-inner img 
		{
		      width: 80%; 
		      margin: auto;
		      min-height:200px;
		      height: 50%;
  		}
		 @media (max-width: 600px)
		 {
		    .carousel-caption {
		      display: none; 
    	}
    
  }
  
  	.col-lg-12.row
	{
		
		text-align: center;
		width: 84%;
		margin-left: 120px;
		
	}
	.navbar
	{
	text-align:center;
		width: 80%;
	}
  
body
{
background-color: rgb(224,224,224);
}
</style>
</head>
<body>

<div class="navbar navbar-default">
	<ul class="nav navbar-nav">
		<li   class="active"><a href="">HOME</a></li>
		<li><a href="<c:url value='/Product'/>">PRODUCTS</a></li>
		<%-- <li class="dropdown">
		<a data-toggle="dropdown" href="<c:url value='/Product'/>"> PRODUCTS<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="<c:url value='/Hand'/>">HAND BAG</a></li>
				<li><a href="<c:url value='/Luggage'/>">LUGGAGE BAG</a></li>
				<li><a href="<c:url value='/Laptop'/>">LAPTOP BAG</a></li>
			</ul>
			
		</li>--%>
		<li><a href="<c:url value='/About'/>">ABOUT US</a></li>
		<li><a href="<c:url value='/Contact'/>">CONTACT US</a></li>
	</ul>
	
      <ul class="nav navbar-nav navbar-right" style="margin-right: 70px">
	
		<li><a href="<c:url value='/Login'/>"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
		<li><a href="<c:url value='/Register'/>">REGISTER</a></li>
	</ul>
</div>
<center class="container">
<div ng-app="bagApp" ng-controller="bagCtrl">
  <input type="text" id="s" class="form-control" placeholder="Search Here" ng-model="searchProduct"/>
  <br/>
  <br/> 
  <table class="table table-bordered " style="text-align: center;" >
    <thead class="thead-inverse">
      <tr>
        <th>Product Image</th>
        <th>Name</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Order</th>
      </tr>
    </thead>
    <tbody>
		    <tr ng-repeat="dt in bagsData">
		  		<td>{{dt.pid}}</td>
				<td>{{dt.name}}</td>
		        <td>{{dt.qty}}</td>
		        <td>{{dt.price}}</td>     
				<td><a href="<c:url value='/Page1'/>"><button class="btn btn-info">Buy Now</button></a></td>
		      </tr>      
		    </tbody>
		  </table>
		</div>
		</center>
	
  <script>
      var bagA = angular.module("bagApp", []);
      bagA.controller("bagCtrl", function ($scope, $http)
      {
        $http.get("P").success(function(data) 
        {
        	//alert("hi1");
          	$scope.bagsData = data;
        });
      });
    </script>
</body>
</html>


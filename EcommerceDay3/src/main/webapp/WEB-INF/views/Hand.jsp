<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
<head>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  	<link rel="stylesheet" href="<c:url value='resources/css/bootstrap.min.css'/>">
  	<script src="<c:url value='resources/js/jquery.min.js'/>"></script>
  	<script src="<c:url value='resources/js/bootstrap.min.js'/>"></script>
  	
  	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
  	
  	<script>
      var bagA = angular.module("bagApp", []);
      bagA.controller("bagCtrl",function($scope, $http){
    	  $scope.searchProduct='';
    	 
        $http.get("./resources/JSon/ProductInfo.json").success(function(data) {
                $scope.bagsdata = data;
        
        });
        
      });
    </script>
  	
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Hand Bags</title>

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

<div ng-app="bagApp" ng-controller="bagCtrl">
<center class="container">

  <input type="text" id="s" class="form-control" placeholder="Search Here" ng-model="searchProduct"/>
  <br/>
  <br/> 
  <table class="table table-bordered" style="text-align: center;" ng-app="bagApp"  ng-controller="bagCtrl">
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
    <tr ng-repeat="dt in bagsdata | filter:searchProduct">
  		<td><img ng-src="{{dt.image}}" height="200" width="150"/></td>
		<td>{{dt.name}}</td>
        <td>{{dt.qty}}</td>
        <td>{{dt.price}}</td>
     
		<td><a href="<c:url value='/Page1'/>"><button class="btn btn-info">Buy Now</button></a></td>
      </tr>
    </tbody>

    </tbody>
  </table>
  </center>
</div>
<script>
      var bag= angular.module("bagApp", []);
      bag.controller("bagCtrl",function($scope, $http){
    	  
        $http.get("./resources/JSon/ProductInfo.json").success(function(data) {
        	
          $scope.bagsdata = data;
          
        });
        
      });
    </script>
</body>
</html>

<%--
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
<head>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  	<link rel="stylesheet" href="<c:url value='resources/css/bootstrap.min.css'/>">
  	<script src="<c:url value='resources/js/jquery.min.js'/>"></script>
  	<script src="<c:url value='resources/js/bootstrap.min.js'/>"></script>
  	
  	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
  	
  	
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Hand Bags</title>

</head>
<body>


<div ng-app="bagApp" ng-controller="bagCtrl">

  <table >
    
    <tbody>
    <tr ng-repeat="dt in bagsdata">
  		
		<td>{{dt.name}}</td>
        <td>{{dt.qty}}</td>
        <td>{{dt.price}}</td>
       
      </tr>
    </tbody>
  </table>
 
</div>
<script>
      var bag= angular.module("bagApp", []);
      bag.controller("bagCtrl",function($scope, $http){
    	  alert("hello");
        $http.get("./resources/JSon/ProductInfo.json").success(function(data) {
        	alert("hello2");
          $scope.bagsdata = data;
          alert($scope.bagsdata);
        });
        
      });
    </script>
  	
</body>
</html> --%>
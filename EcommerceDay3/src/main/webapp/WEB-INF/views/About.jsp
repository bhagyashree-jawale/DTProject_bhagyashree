<html>
<head>

	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  	<link rel="stylesheet" href="<c:url value='resources/css/bootstrap.min.css'/>">
  	<script src="<c:url value='resources/js/jquery.min.js'/>"></script>
  	<script src="<c:url value='resources/js/bootstrap.min.js'/>"></script>

	
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
		body
		{
			background-color: rgb(224,224,224);
		}

		
	</style>
</head>
<body>
	<!--  navbar-fixed-top -->
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
		<h3 style="color: black">About us</h3><h5 style="color:gray"> It's nice to meet you</h5>
		<p>
		
			This web site mainly created for bag purchase
			<h3 style="color: black">
			Our Team
			</h3>
			<div class="omb_login" align="center">    	
				<table style="text-align: center" cell-spacing="10">
					<tr >
						<td>
			    	   
			    	  		<div class="thumbnail" >
								<img  class="img-circle" src="resources/images/1.jpg" height="200px" width="200px"/>    	    	
			    	    		<p><strong>Ms Alina John</strong><br><strong>Manager</strong></p>
			    	    		
			    	    	</div>
			    	    </td>
			    	    <td>
			        		<div class="thumbnail">
								<img  class="img-circle" src="resources/images/2.jpg" height="200px" width="200px"/>    	    	
			    	    		<p><strong>Ms Catherine Smith</strong><br><strong>Assistant Manager</strong></p>
			    	    		
			    	    	</div>
			    	    </td>
			    	 </tr>
			    	 <tr>
			    	    <td>
			    	    	<div class="thumbnail">
								<img  class="img-circle" src="resources/images/3.jpg" height="200px" width="200px"/>    	    	
			    	    		Mr Bruce Lee</strong><br><strong>Sales Manager</strong></p>
			    	    		
			    	    	</div>
			    	    </td>
			    	    <td>
			    	    	<div class="thumbnail">
								<img  class="img-circle" src="resources/images/4.jpg" height="200px" width="200px"/>    	    	
			    	    		<p><strong>Mr Tom Demello</strong><br><strong>Assistant sales Manager</strong></p>
			    	    		
			    	    	</div>
			    	    <td>
			    	</tr>
		       </table> 		
			</div>			
		</p>
	</center>
</body>
</html>

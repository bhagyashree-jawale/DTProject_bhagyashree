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
		
		.card-container.card 
		{
		    width: 500px;
		    padding: 40px 40px;
		    background-color: silver;
		    margin-top: 100px;
		   border-width: thick;
		   
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
		<li class="dropdown"><a data-toggle="dropdown" href="<c:url value='/Product?category=all'/>">PRODUCTS<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="<c:url value='/Hand'/>">HAND BAG</a></li>
				<li><a href="<c:url value='/Luggage'/>">LUGGAGE BAG</a></li>
				<li><a href="<c:url value='/Laptop'/>">LAPTOP BAG</a></li>
			</ul>
			
		</li>
		<li><a href="<c:url value='/About'/>">ABOUT US</a></li>
		<li><a href="<c:url value='/Contact'/>">CONTACT US</a></li>
	</ul>
	
      <ul class="nav navbar-nav navbar-right" style="margin-right: 70px">
	
		<li><a href="<c:url value='/Login'/>"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
		<li  class="active"><a href="<c:url value='/Register'/>">REGISTER</a></li>
	</ul>
</div>


<center>
      	<div class="card card-container">       		            	
            	
            	<form class="form-register">
            		<h3 style="margin-top:50px;color:Blue" class="omb_authTitle" >Register Here</a></h3>
                	<div class="help-block"></div>
               		<input style="margin-top:50px" type="email" id="inputEmail" class="form-control" placeholder="Email address" required >
               		<div class="help-block"></div>
                	<input type="password" id="inputPassword" class="form-control" placeholder="Password" maxlength="20" data-minlength="6" required>
                	<div class="help-block"></div>
                	<div class="help-block">Minimum of 6 characters</div>
                	<input type="password" id="inputRPassword" class="form-control" placeholder="Confirm Password"  data-match="inputPassword" data-match-error="Password doesn't match" required >
                	<div class="help-block with-errors"></div>
                	<input type="email" id="inputAEmail" class="form-control" placeholder="Alternate Email ID" required>
                	<div class="help-block"></div>
                	<button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Register</button>
            	</form>
            <a href="#" class="forgot-password">
                Forgot the password?
            </a>
        </div>
        </center>
    </div>


</body>
</html>

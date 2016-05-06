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
		<li><a href="<c:url value='/About'/>">ABOUT US</a></li>
		<li  class="active"><a href="<c:url value='/Contact'/>">CONTACT US</a></li>
	</ul>
	
      <ul class="nav navbar-nav navbar-right" style="margin-right: 70px">
	
		<li><a href="<c:url value='/Login'/>"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
		<li ><a href="<c:url value='/Register'/>">REGISTER</a></li>
	</ul>
</div>


    <div class="container">
        <div class="row">       
                <h1>Contact us <small>Feel free to contact us</small></h1>            
        </div>
   <p>
   </p>

	<div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>Smart Bags, Inc.</strong><br>
                795 Folsom Ave, Suite 600<br>
                San Francisco, CA 94107<br>
                <abbr title="Phone">
                    P:</abbr>
                (123) 456-7890
            </address>
            <address>
                <strong>Full Name</strong><br>
                <a href="mailto:#">smart_bags@gmail.com</a>
            </address>
            </form>
        </div>
         </div>
</body>
</html>

<html>
<head>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  	<link rel="stylesheet" href="<c:url value='resources/css/bootstrap.min.css'/>">
  	<script src="<c:url value='resources/js/jquery.min.js'/>"></script>
  	<script src="<c:url value='resources/js/bootstrap.min.js'/>"></script>
	
	
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
<!--  navbar-fixed-top -->


<div class="navbar navbar-default">
	<ul class="nav navbar-nav">
		<li   class="active"><a href="">HOME</a></li>
		<li><a href="<c:url value='/Product'/>">PRODUCTS</a></li>
		
		<%-- <li><a href="<c:url value='/Product?category=all'/>">PRODUCTS</a></li>--%>
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


<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
     <li data-target="#myCarousel" data-slide-to="2"></li>

    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/H1.jpg" alt="Image">             
      </div>

      <div class="item">
        <img src="resources/images/H2.png" alt="Image">
        
      </div>
      <div class="item">
        <img src="resources/images/h3.jpg" alt="Image">
             
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
        <div class="help-block"></div>
<div class="row col-lg-12">
      <div class="col-sm-4">
        <div class="thumbnail">
        <a href="<c:url value='/Product?category=H1'/>">
          <img src="resources/images/bag1.jpg"  width="400" height="300">
          <p><strong>Hand Bag</strong></p>         
          <button class="btn" >Buy Now</button>
          </a>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
        <a href="<c:url value='/Product?category=T1'/>">
          <img src="resources/images/bag8.jpg"  width="400" height="300">
          <p><strong>Luggage Bag</strong></p>
         
          <button class="btn">Buy Now</button>
          </a>
          
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
        <a href="<c:url value='/Product?category=L1'/>">
          <img src="resources/images/bag9.jpg" width="400" height="300">
          <p><strong>Laptop Bag</strong></p>
        
          <button class="btn">Buy Now</button>
          </a>
          
        </div>
      </div>
    </div>
</body>

</html>

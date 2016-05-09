<html>
<head>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  	<link rel="stylesheet" href="<c:url value='resources/css/bootstrap.min.css'/>">
  	<script src="<c:url value='resources/js/jquery.min.js'/>"></script>
  	<script src="<c:url value='resources/js/bootstrap.min.js'/>"></script>
	<link rel="stylesheet" href="<c:url value='resources/css/style.css'/>">

	<script src="<c:url value='resources/js/index.js'/>"></script>

	
	
	<style>
	
	.dropdown-menu
	{
		background-color: black;
			color: blue;
			
	}
		
		.navbar
		{
			background-color: black;
			margin-left: 150px;
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
  footer
  {
  	width: 60%;
  	height:50px;
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
		<li><a href="">HOME</a></li>
		<li class="active"><a href="<c:url value='/About'/>">ABOUT US</a></li>
		<li><a href="<c:url value='/ViewMovie'/>">VIEW ALL</a></li>		
		<li><a href="<c:url value='/AddMovie'/>">ADMIN</a></li>
	</ul>
	
      <ul class="nav navbar-nav navbar-right" style="margin-right: 70px">
	
		<li><a href="<c:url value='/Login'/>"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>

	</ul>
</div>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

<div class="container">
   <div class="row">
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

  </div>
</div>
<footer style="text-align: center;color:black">
<p>@Copyrights 2016.movies.com
</footer>

</body>

</html>

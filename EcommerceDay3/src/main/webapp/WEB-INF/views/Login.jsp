<html>
<head>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  	<link rel="stylesheet" href="<c:url value='resources/css/bootstrap.min.css'/>">
  	<script src="<c:url value='resources/js/jquery.min.js'/>"></script>
  	<script src="<c:url value='resources/js/bootstrap.min.js'/>"></script>
  	
  	
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
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
		


	


.card-container.card {
    width: 350px;
    padding: 40px 40px;
    background-color: silver;
    margin-top: 100px;
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
		<li><a href="<c:url value='/Contact'/>">CONTACT US</a></li>
	</ul>
	
      <ul class="nav navbar-nav navbar-right" style="margin-right: 70px">
	
		<li class="active"><a href="<c:url value='/Login'/>"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
		<li><a href="<c:url value='/Register'/>">REGISTER</a></li>
	</ul>
</div>



<center>
    <div class="omb_login" align="center">    	
<table>
	<tr>
	<td>
    	    <div  class="col-sm-4" >
    	    	<a href="http://www.facebook.com">
					<img  class="img-circle" src="resources/images/facebook.jpg" height="100px" width="100px"/>    	    	
    	    	</a>
    	    </div></td>
    	    <td>
        	<div  class="col-sm-4" >
    	    	<a href="http://www.twitter.com">
					<img  class="img-circle" src="resources/images/twitter.jpg" height="100px" width="100px"/>    	    	
    	    	</a>
    	    </div>
    	    </td>
    	    <td>
    	    <div  class="col-sm-4">
    	    	<a href="http://www.google.com">
					<img  class="img-circle" src="resources/images/google.jpg" height="100px" width="100px"/>    	    	
    	    	</a>
    	    </div>
    	    <td>
    	    </tr>
       </table> 		
		</div>

		

	
		
        	<div class="card card-container">
            		<h3 style="margin-top:10px" class="omb_authTitle">Login or <a href="Register.jsp">Sign up</a></h3>
            		<img id="profile-img" class="profile-img-card" src="resources/images/smily.jpg" height="150" width="150"  />
            		
            	
            	<p id="profile-name" class="profile-name-card"></p>
            	<form class="form-signin">
                	<span id="reauth-email" class="reauth-email"></span>
               		<input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
               		<div class="help-block"></div>
                	<input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                	<div id="remember" class="checkbox">
                    	<label>
                        	<input type="checkbox" value="remember-me"> Remember me
                    	</label>
                	</div>
                	<button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>
            	</form>
            <a href="#" class="forgot-password">
                Forgot the password?
            </a>
        </div>
        </center>
    </div>


     
</body>
</html>

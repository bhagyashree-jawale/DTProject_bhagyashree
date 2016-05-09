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
		<li><a href="<c:url value='/About'/>">ABOUT US</a></li>
		<li><a href="<c:url value='/ViewMovie'/>">VIEW ALL</a></li>		
		<li><a href="<c:url value='/AddMovie'/>">ADMIN</a></li>
	</ul>
	
      <ul class="nav navbar-nav navbar-right" style="margin-right: 70px">
	
		<li class="active"><a href="<c:url value='/Login'/>"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>

	</ul>
</div>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

<div class="container">
   <div class="row">
    <div class="col-md-6 col-md-offset-3">
      <div class="panel panel-login">
        <div class="panel-body">
          <div class="row">
            <div class="col-lg-12">
              <form id="login-form" action="#" method="post" role="form" style="display: block;">
                <h2>LOGIN</h2>
                  <div class="form-group">
                    <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
                  </div>
                  <div class="form-group">
                    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                  </div>
                  <div class="col-xs-6 form-group pull-left checkbox">
                    <input id="checkbox1" type="checkbox" name="remember">
                    <label for="checkbox1">Remember Me</label>   
                  </div>
                  <div class="col-xs-6 form-group pull-right">     
                        <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
                  </div>
              </form>
              <form id="register-form" action="#" method="post" role="form" style="display: none;">
                <h2>REGISTER</h2>
                  <div class="form-group">
                    <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
                  </div>
                  <div class="form-group">
                    <input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email Address" value="">
                  </div>
                  <div class="form-group">
                    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                  </div>
                  <div class="form-group">
                    <input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
                  </div>
                  <div class="form-group">
                    <div class="row">
                      <div class="col-sm-6 col-sm-offset-3">
                        <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
                      </div>
                    </div>
                  </div>
              </form>
            </div>
          </div>
        </div>
        <div class="panel-heading">
          <div class="row">
            <div class="col-xs-6 tabs">
              <a href="#" class="active" id="login-form-link"><div class="login">LOGIN</div></a>
            </div>
            <div class="col-xs-6 tabs" style="text-align: center;">
              <a href="#" id="register-form-link"><div class="register">REGISTER</div></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<footer style="text-align: center;color:black">
<p>@Copyrights 2016.movies.com
</footer>

</body>

</html>

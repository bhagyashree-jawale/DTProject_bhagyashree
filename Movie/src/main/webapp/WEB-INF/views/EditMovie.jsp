<html>
<head>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
		<li class="active"><a href="<c:url value='/AddMovie'/>">ADMIN</a></li>
	</ul>
	
      <ul class="nav navbar-nav navbar-right" style="margin-right: 70px">
	
		<li><a href="<c:url value='/Login'/>"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>

	</ul>
</div>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

<div class="container">
   
</div>
	<h2>Add Movie Data</h2>  
	<form:form method="GET" action="EditSaveMovie">  
      <table>  
       <tr>  
           <td><form:label path="movie_id">Movie ID:</form:label></td>  
           <td><form:input path="movie_id" value="${movie.movie_id}"/></td>  
       </tr>  
       <tr>  
           <td><form:label path="movie_name">Movie Name:</form:label></td>  
           <td><form:input path="movie_name" value="${movie.movie_name}"/></td>  
       </tr>  
       <tr>  
           <td><form:label path="price">Movie Price :</form:label></td>  
           <td><form:input path="price" value="${movie.price}"/></td>  
       </tr>  
       <tr>  
           <td><form:label path="time">Movie Time :</form:label></td>  
           <td><form:input path="time" value="${movie.time}"/></td>  
       </tr>
       <tr>  
           <td><form:label path="category">Movie category :</form:label></td>  
           <td><form:input path="category" value="${movie.category}"/></td>  
       </tr>    
          <tr>  
         <td colspan="2"><input type="submit" value="Submit"/></td>  
        </tr>  
   </table>   
  </form:form> 
	  
</body>
<footer style="text-align: center;color:black">
<p>@Copyrights 2016.movies.com
</footer>

</html>

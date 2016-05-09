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
		<li class="active"><a href="<c:url value='/ViewMovie'/>">VIEW ALL</a></li>		
		<li><a href="<c:url value='/AddMovie'/>">ADMIN</a></li>
	</ul>
	
      <ul class="nav navbar-nav navbar-right" style="margin-right: 70px">
	
		<li><a href="<c:url value='/Login'/>"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>

	</ul>
</div>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

<div class="container">
   <h3><a href="/AddMovie'/>">Add More Movies</a></h3>  
  
<c:if test="${!empty movieList}">  
 <table align="left" border="1">  
  <tr>  
   <th>Movie ID</th>  
   <th>Movie Name</th>  
   <th>Movie Category</th>  
   <th>Movie Price</th>  
   <th>Movie Time</th>  
  </tr>  

  <c:forEach items="${movieList}" var="m">  
   <tr>  
    <td><c:out value="${m.movie_id}"/></td>  
    <td><c:out value="${m.movie_name}"/></td>  
    <td><c:out value="${m.category}"/></td>  
    <td><c:out value="${m.price}"/></td>  
    <td><c:out value="${m.time}"/></td>
    <td><a href="<c:url value='/EditMovie?movie_id=${m.movie_id}'/>">EDIT</a> | <a href="<c:url value='/DeleteMovie?movie_id=${m.movie_id}'/>">DELETE</a> |  <a href="<c:url value='/ViewDetail?movie_id=${m.movie_id}'/>">VIEW</a></td>  
      
   </tr>  
  </c:forEach>  
 </table>  
</c:if>  
</div>
<footer style="text-align: center;color:black">
<p>@Copyrights 2016.movies.com
</footer>

</body>

</html>

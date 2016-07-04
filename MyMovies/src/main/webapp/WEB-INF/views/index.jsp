<!DOCTYPE html>
<html lang="en">
<body>
<%@include file="Header.jsp" %> 
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
			      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			      <li data-target="#myCarousel" data-slide-to="1"></li>
			     <li data-target="#myCarousel" data-slide-to="2"></li>
			     <li data-target="#myCarousel" data-slide-to="3"></li>
			
	</ol>

		<!-- Wrapper for slides -->
			    <div class="carousel-inner" role="listbox">
			      <div class="item active">
			        <img src="resources/images/marathi2.jpg" alt="Image">             
			      </div>
			
			      <div class="item">
			        <img src="resources/images/Hindi1.jpg" alt="Image">
			        
			      </div>
			      <div class="item">
			        <img src="resources/images/sairat.jpg" alt="Image">
			             
			      </div>
			      <div class="item">
			        <img src="resources/images/English1.jpg" alt="Image">
			             
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


</body>
</html>

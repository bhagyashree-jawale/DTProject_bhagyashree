<!DOCTYPE html>
<html lang="en">
<body>
<%@include file="Header.jsp" %> 

<div id="category" class="bg-1">
  <div class="container">
    <h3 class="text-center">MOVIES</h3>
    <p class="text-center">Remember to book your tickets!</p>    
    <div class="row text-center">
    <div class="col-sm-4">
        <div class="thumbnail">
          <a href="<c:url value='/ViewSearch?category=English'/>">
          <img src="resources/images/English.jpg"  width="400" height="300">
          <p><strong>English</strong></p>         
          <button class="btn" >Book Now</button>
          </a>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="<c:url value='/ViewSearch?category=Hindi'/>">
          <img src="resources/images/Hindi.png"  width="400" height="300">
          <p><strong>Hindi</strong></p>
         
          <button class="btn">Book Now</button>
          </a>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="<c:url value='/ViewSearch?category=Marathi'/>">
          <img src="resources/images/Marathi.png"  width="400" height="300">
          <p><strong>Marathi</strong></p>
        
          <button class="btn">Book Now</button>
          </a>
        </div>
      </div>
      
    </div>
  </div>


</body>
</html>

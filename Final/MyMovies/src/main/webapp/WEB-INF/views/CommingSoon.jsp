<!DOCTYPE html>
<html lang="en">
<body>
<%@include file="Header.jsp" %> 

<!--  comingsoon -->
  <div id="comingsoon" class="bg-1">
  <div class="container">
    <h3 class="text-center">COMING SOON</h3>
    <p class="text-center">Remember to book your tickets!</p>    
    
    <c:if test="${!empty movieList}"> 
       
     <div class="row text-center">
  

<!--     	<div class="col-sm-6"> -->
    	
    	    <table >
    			<tr> 
    				<c:forEach items="${movieList}" var="movie">  
    		 <td style="width:5px"></td>
    		  		<td>
				        <div class="thumbnail">
				          <a href="<c:url value='/ViewMovie'/>">
				          <img src="${movie.fpath}"  width="300" height="300">
				          <p><strong><c:out value="${movie.moviename}" /></strong></p> 
				          <p><strong><c:out value="${movie.category}" /></strong></p>         
				          <button class="btn" >Book Now</button>
				          </a>
				       </div>
		       		</td>
		       		<td style="width:5px"></td>
        			</c:forEach>
        		</tr>
      	 	</table>
<!--       	 	 </div> -->
      	</div>
      	
       
      
      </c:if>
    <!-- 
    <div class="col-sm-4">
        <div class="thumbnail">
          <a href="<c:url value='/ViewMovie'/>">
          <img src="resources/images/English.jpg"  width="400" height="300">
          <p><strong>English</strong></p>         
          <button class="btn" >Book Now</button>
          </a>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="<c:url value='/ViewMovie'/>">
          <img src="resources/images/Hindi.jpg"  width="400" height="300">
          <p><strong>Hindi</strong></p>
         
          <button class="btn">Book Now</button>
          </a>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <a href="<c:url value='/ViewMovie'/>">
          <img src="resources/images/marathi1.jpg" width="400" height="300">
          <p><strong>Marathi</strong></p>
        
          <button class="btn">Book Now</button>
          </a>
        </div>
      </div>
      -->
        <!-- <c:if test="${!empty movieList}">  
    	<div class="col-sm-4">
    		<c:forEach items="${movieList}" var="movie">  
		        <div class="thumbnail">
		          <a href="<c:url value='/ViewMovie'/>">
		          <img src="${movie.fpath}"  width="400" height="300">
		          <p><strong><c:out value="${movie.moviename}" /></strong></p> 
		          <p><strong><c:out value="${movie.category}" /></strong></p>         
		          <button class="btn" >Book Now</button>
		          </a>
		        </div>
        	</c:forEach>
      	</div>
      </c:if>-->
    </div>
  </div>



</body>
</html>

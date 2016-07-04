<!DOCTYPE html>
<html lang="en">

<%@include file="Header.jsp" %> 
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
  <!-- nowshow -->
  <div id="nowshow" class="bg-1">
  <div class="container">
    <h3 class="text-center">NOW SHOWING</h3>
    <p class="text-center">Remember to book your tickets!</p> 
       <c:if test="${!empty movieList}"> 
       
     
    <div class="row text-center">

    	<div class="col-sm-4">
    	
    	    <table >
    			<tr> 
    				<c:forEach items="${movieList}" var="movie">  
    		 
    		  		<td>
				        <div class="thumbnail">
				          <a href="<c:url value='/ViewRecord?movieid=${movie.movieid}'/>">
				          <img src="${movie.fpath}"  width="300" height="300"/>
				          <p><strong><c:out value="${movie.moviename}" /></strong></p> 
				          <p><strong><c:out value="${movie.category}" /></strong></p>         
				          <button class="btn" >Book Now</button>
				          </a>
				       </div>
		       		</td>
        			</c:forEach>
        		</tr>
      	 	</table>
      	 	 </div>
      	</div>
      	
       
      
      </c:if>
<!--       <div class="col-sm-4"> -->
<!--         <div class="thumbnail"> -->
<%--           <a href="<c:url value='/ViewMovie'/>"> --%>
<!--           <img src="resources/images/buddha.jpg"  width="400" height="300"> -->
<!--           <p><strong>Hindi</strong></p> -->
         
<!--           <button class="btn">Book Now</button> -->
<!--           </a> -->
<!--         </div> -->
<!--       </div> -->
<!--       <div class="col-sm-4"> -->
<!--         <div class="thumbnail"> -->
<%--           <a href="<c:url value='/ViewMovie'/>"> --%>
<!--           <img src="resources/images/civil.jpg" width="400" height="300"> -->
<!--           <p><strong>Marathi</strong></p> -->
        
<!--           <button class="btn">Book Now</button> -->
<!--           </a> -->
<!--         </div> -->
<!--       </div> -->
      
  
  </div>

</body>
</html>

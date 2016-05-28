    <%@ page language="java" contentType="text/html; charset=UTF-8"  
     pageEncoding="UTF-8"%>  

    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
    <html>  

    <body>  
     <center>  
      
      <%@include file="Header.jsp" %>

      <c:if test="${!empty movieList}"> 
      <div class="container"> 
       <table class="table">  
       <thead>
        <tr  
         style=" text-align: center;"  
         height="40px">  
           <td>Movie Poster</td>  
         <td>Movie Name</td> 
     
         <td>Movie Actor</td>  
         <td>Movie Actress</td>  
         <td>Movie Director</td>  
         <td>Movie Category</td>  
         <td>Movie Price</td>  
<!--          <td>Edit</td>   -->
<!--          <td>Delete</td>    -->
          <td>View Record</td> 
        </tr>  
        </thead>
        <c:forEach items="${movieList}" var="movie">  
         <tr  
          style="background-color: white; color: black; text-align: center;"  
          height="30px">  
          <td><img src="${movie.fpath}" height="200" width="100"></td>    
          <td><c:out value="${movie.moviename}" /></td>  
          <td><c:out value="${movie.actor}" /></td>  
          <td><c:out value="${movie.actress}" /></td>   
          <td><c:out value="${movie.director}" /></td>  
          <td><c:out value="${movie.category}" /></td>  
          <td><c:out value="${movie.price}" /></td> 
           
<%--           <td width="50"><a href="<c:url value="/EditMovie?movieid=${movie.movieid}"/>"> Edit </a></td>   --%>
<%--           <td width="50"><a href="<c:url value="/delete?movieid=${movie.movieid}"/>">Delete</a></td> --%>
          <td width="50"><a href="<c:url value="/ViewRecord?movieid=${movie.movieid}"/>">View Record</a></td>  
         </tr>  
        </c:forEach>  
       </table>
       </div>  
      </c:if>
      
     
      
      
     
     </center>  
    </body>  
    </html>  



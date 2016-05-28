<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
tr
{
width: 90%;
height: 100px;
}
td
{
	width: 50px:
}
</style>
</head>
<body>
<%@include file="Header.jsp" %>
<div style="margin-top: 150px">
	<form:form method="POST" action="updateMovie" modelAttribute="movie" enctype="multipart/form-data">  
      <table class="table table-bordered" align="center" style="width: 90%">  
          <tr>  
           <td><form:label path="movieid">Movie ID:</form:label></td>  
           <td><form:input path="movieid" value="${movie.movieid}"/></td> 
           </tr> 
       <tr>  
           <td><form:label path="moviename">Movie Name:</form:label></td>  
           <td><form:input path="moviename" value="${movie.moviename}"/></td> 
           </tr> 
       <tr>  
           <td><form:label path="actor">Movie Actor:</form:label></td>  
           <td><form:input path="actor" value="${movie.actor}"/></td>  
       </tr>  

       <tr>  
           <td><form:label path="actress">Movie Actress :</form:label></td>  
           <td><form:input path="actress" value="${movie.actress}"/></td>  
       </tr>  
       <tr>  
           <td><form:label path="director">Movie Director :</form:label></td>  
           <td><form:input path="director" value="${movie.director}"/></td>  
       </tr>
       <tr>  
           <td><form:label path="category">Movie category :</form:label></td>  
           <td><form:input path="category" value="${movie.category}"/></td>  
       </tr>    
       <tr>  
           <td><form:label path="price">Movie Price :</form:label></td>  
           <td><form:input path="price" value="${movie.price}"/></td>  
       </tr>
       <tr>  
           <td><form:label path="releaseDate">Movie ReleaseDate :</form:label></td>  
           <td><form:input path="releaseDate" value="${movie.releaseDate}"/></td>  
       </tr>     
      <tr>  
           <td><form:label path="fpath">Upload Poster :</form:label></td>  
           <td> <form:input type="file" path="file1" value="${movie.file1}"/></td>
       </tr>    
          <tr>  
         <td colspan="2"><input type="submit" value="Submit"/></td>  
        </tr>  
   </table>   
  </form:form> 
  </div>
</body>
</html>
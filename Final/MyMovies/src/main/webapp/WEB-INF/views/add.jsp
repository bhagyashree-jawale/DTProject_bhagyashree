<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>

<%@include file="Header1.jsp" %>

<div class="container">
  <div class="row">
    <div class="Absolute-Center is-Responsive">
      <div id="logo-container"></div>
      <div class="col-sm-12 col-md-10 col-md-offset-1">
      <div class="form-group input-group">
          
            <center><h3>New User? Register Here</a></h3></center>          
          </div>

        <form:form method="POST" action="save" class="login-form" commandName="movie" enctype="multipart/form-data">  
         <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input class="form-control" type="text" path='movieid'  placeholder="Movie ID"/>   
             
          </div>
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input class="form-control" type="text" path='moviename'  placeholder="Movie Name"/>   
             
          </div>
                   <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input class="form-control" type="text" path='actor'  placeholder="Actor"/>   
             
          </div>
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input class="form-control" type="text" path='actress'  placeholder="Actress"/>   
            
          </div>
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input class="form-control" type="text" path='director'  placeholder="Director"/>   
             
          </div>
          
          
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
            <select path="category"  id="category" name="category">
			   <option value="select">--- Select ---</option> 
			   <option value="English">English</option>
			   <option value="Hindi">Hindi</option>
			   <option value="Marathi">Marathi</option>
			 
			</select>			      
          </div> 
          
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input class="form-control" type="text" path='price'  placeholder="Ticket Rate"/>   
             
          </div>
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input type="file" path="file1"  name="file1" id="file1"/> 
             
          </div>
          
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
<%--             <form:input class="form-control" type="text" path='releaseDate'  placeholder="Ticket Rate"/>    --%>
            <form:input path="releaseDate" id="datepicker"  class="form-control"  placeholder="Release Date"/> 
             <script>
                    $(function() {
                        $("#datepicker").datepicker();
                    });
                </script>
          </div>
          
          <div class="form-group">
            <button class="btn btn-def btn-block">ADD MOVIE</button>
          </div> 
         
        </form:form>        
      </div>  
    </div>    
  </div>
</div> 
 
<!-- <div class="container-fluid text-center" align="center"  style="margin-top: 150px">

  
<!-- <div>
   <h2>Add Movie Data</h2>  
	<form:form method="POST" action="save" enctype="multipart/form-data">  
      <table>  
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
           <td><form:label path="fpath">Upload Poster :</form:label></td>  
           <td> <form:input type="file" path="file1" value="${movie.file1}"/></td>
       </tr>    
          <tr>  
         <td colspan="2"><input type="submit" value="Submit"/></td>  
        </tr>  
   </table>   
  </form:form>  -->
  
  
 <!-- running 
    <div>
   <h2>Add Movie Data</h2>  
	<form:form class="login-form"  method="POST" action="save"  commandName="movie" enctype="multipart/form-data">

      <table>  
             <tr>  
           <td><form:label path="movieid">Movie ID:</form:label></td>  
           <td><form:input path="movieid"/></td> 
           </tr> 
       <tr>  
           <td><form:label path="moviename">Movie Name:</form:label></td>  
           <td><form:input path="moviename"/></td> 
           </tr> 
       <tr>  
           <td><form:label path="actor">Movie Actor:</form:label></td>  
           <td><form:input path="actor"/></td>  
       </tr>  

       <tr>  
           <td><form:label path="actress">Movie Actress :</form:label></td>  
           <td><form:input path="actress"/></td>  
       </tr>  
       <tr>  
           <td><form:label path="director">Movie Director :</form:label></td>  
           <td><form:input path="director" /></td>  
       </tr>
       <tr>  
           <td><form:label path="category">Movie category :</form:label></td>  
         <!--    <td><form:input path="category"/></td>-->
        <!--  <td><select path="category"  id="category" name="category">
			   <option value="select">--- Select ---</option> 
			   <option value="English">English</option>
			   <option value="Hindi">Hindi</option>
			   <option value="Marathi">Marathi</option>
			 
			</select> </td>
  
       </tr>    
       <tr>  
           <td><form:label path="price">Movie Price :</form:label></td>  
           <td><form:input path="price"/></td>  
       </tr>       
      <tr>  
           <td><form:label path="fpath">Upload Poster :</form:label></td>  
           <td> <form:input type="file" path="file1"  name="file1" id="file1"/></td>
       </tr>    
          <tr>  
         <td colspan="2"><input type="submit" value="Submit"/></td>  
        </tr>  
   </table>   
  </form:form>
  </div>
</div>
 -->
</body>
</html>
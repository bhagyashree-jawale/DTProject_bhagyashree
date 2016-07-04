<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="Header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
<title>Insert title here</title>
</head>

<body>

<div class="register-form " >
   
  <div class="form">
   <h3>View Details </h3>
    <c:if test="${!empty movieObject}"> 
    <form:form class="login-form"  method="POST" action="seatBook"  modelAttribute="product" enctype="multipart/form-data">
       <table style="margin-left: 15%;">
         <tr>  
             <td>
           <!--   <c:out value="${prod.fpath}"/>-->
          <img src="${movieObject.fpath}" >
          </td>
          </tr>
         
          <tr>
            <td><c:out value=" Movie : ${movieObject.moviename}" />
   
          </tr>
         <tr><td>   <c:out value="Actor : ${movieObject.actor}" /> </td></tr>
          <tr><td><c:out value="Actress : ${movieObject.actress}" /></td> 
          <tr><td><c:out value="Director : ${movieObject.director}" /></td> </tr>
               <tr><td><c:out value="Cagoryte : ${movieObject.category}" /></td> </tr>
        	<tr><td><c:out value="${movieObject.price}" />  </td></tr>  
=          <tr><td><input type="submit" value="Book Now"/></td></tr>
          <tr><td><a href="<c:url value='/Category'/>">Back To Main Category</a></td></tr>
          </table>
      
    </form:form>
    </c:if>
  </div>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <%@page isELIgnored="false" %>
    <%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 

<%@include file="allcss.jsp" %>

<link rel="stylesheet" type="text/css" href="../component/applycss.css">
<style>
body{
           background-image: url('../assets/img/addtr.jpg');
	       width: 100%;
	       height: 100vh;
			background-size: cover;
			background-position: center;
		    background-repeat: no-repeat;
			justify-content: center;
			justify-items: center;
		}
		
</style>

</head>
<body>
<div class="row bg-secondary ">

<%@include file="navebar1.jsp" %>

</div>
 <!-- **************************************************************** -->
 <div class="page-nav text-center text-dark  col-md-4 offset-md-8 mt-5 ">


  
<c:if test="${not empty succMsg }">
  <h4><p class="text-center text-success fs-10">${succMsg}</p></h4>
  <c:remove var="succMsg" scope="session" />
  </c:if>
  
  
  <c:if test="${not empty errorMsg}">
  <h4><p class="text-center text-danger fs-10">${errorMsg}</p></h4>
  <c:remove var="errorMsg" scope="session" />
  </c:if> 
  
      	<h2 class="text-center pt-3 offset-md-6">NEW REGISTER </h2>
  
    
    <form action="../addtraveler"  method="post">
    
      <div  id="box" >
      
        <label>Traveler Name</label>
        <input class="form-control" name="travelername"  type="text">
        <span class="lighting"></span>
         
         <label>Place</label>
        <input class="form-control" name="manager"  type="text">
        <span class="lighting"></span>
      
        <label >Contact</label>
        <input class="form-control" name="contact" type="text">
        <span class="lighting"></span>
        
        <label >Services</label>
        <input class="form-control" name="services"  type="text">
        <span class="lighting"></span>
        
       <label>Password</label>
        <input class="form-control" name="pass1"  type="text">
        <span class="lighting"></span>
     

      <button type="submit" id="submit" class="btn btn-success">Submit</button>
     
    </form>
       </div>

</body>
</html>
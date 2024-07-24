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
           background-image: url('../assets/img/addhotel.jpg');
	   
		}
</style>
</head>
<body>
<div class="row bg-secondary ">

<%@include file="navebar1.jsp" %>

</div>
 <!-- **************************************************************** -->
 <div class="page-nav no-margin row d-flex justify-content-center align-item-center mt-5" >

<div class="wrapper  col-md-4 offset-md-8 id="box">
  <div class="inner-warpper text-center mt-5">
  
  
  
  
  <c:if test="${not empty sucMsg }">
   <h4><p class="text-center text-success fs-10">${sucMsg}</p></h4>
   <c:remove var="sucMsg" scope="session" />
  </c:if> 
  
  <c:if test="${not empty errorMsg}">
  <h4><p class="text-center text-danger fs-10">${errorMsg}</p></h4>
  <c:remove var="errorMsg" scope="session" />
  </c:if> 
  
  
    <h2 class="title text-center mt-2 text-light">NEW REGISTER </h2>
    
    <form action="../addhotel"  method="post">
      <div class="form-control">
        <label >Hotel Name</label>
        <input class="form-control" name="hotelname"  type="text">
        <span class="lighting"></span>
         
         <label >Manager</label>
        <input class="form-control" name="manager"  type="text">
        <span class="lighting"></span>
      
        <label >Contact</label>
        <input class="form-control" name="contact" type="text">
        <span class="lighting"></span>
        
        <label >Address </label>
        <input class="form-control" name="address"  type="text">
        <span class="lighting"></span>
        
        <label >Rate1</label>
        <input class="form-control" name="rate1"  type="text">
        <span class="lighting"></span>
        
        <label >Rate2 </label>
        <input class="form-control" name="rate2"  type="text">
        <span class="lighting"></span>
        
        <label >Rate3</label>
        <input class="form-control" name="rate3"  type="text">
        <span class="lighting"></span>
        
        <label >Rate4</label>
        <input class="form-control" name="rate4"  type="text">
        <span class="lighting"></span>
     
     <label >Password</label>
        <input class="form-control" name="Pass"  type="text">
        <span class="lighting"></span>

      <button type="submit" id="login" class="btn btn-success">Login</button>
      <div class="clearfix supporter">
      </div>
      </div>
    </form>
       </div>
</div>
</div>
</body>
</html>
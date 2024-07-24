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
           background-image: url('../assets/img/addtourism.jpg');
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
 <div class="page-nav no-margin row d-flex justify-content-center align-item-center mt-5 " >

<div class="wrapper ">
  <div class="inner-warpper text-center">
<c:if test="${not empty succMsg }">
  <h4><p class="text-center text-success fs-10">${succMsg}</p></h4>
  <c:remove var="succMsg" scope="session" />
  </c:if>
  
  
  <c:if test="${not empty errorMsg}">
  <h4><p class="text-center text-danger fs-10">${errorMsg}</p></h4>
  <c:remove var="errorMsg" scope="session" />
  </c:if> 
  
  
    <h2 class="title text-center mt-5">NEW REGISTER </h2>
    
    <form action="../addtourismguide"  method="post" id="box">
      <div class="form-control">
        <label >Guide Name</label>
        <input class="form-control" name="Guide Name"  type="text">
        <span class="lighting"></span>
         
         <label >Place</label>
        <input class="form-control" name="Place"  type="text">
        <span class="lighting"></span>
      
        <label >Contact</label>
        <input class="form-control" name="Contact" type="">
        <span class="lighting"></span>
        
        <label >Rate1 </label>
        <input class="form-control" name="Rate1"  type="text">
        <span class="lighting"></span>
        
         <label >Rate_Group</label>
        <input class="form-control" name="Rate_Group"  type="text">
        <span class="lighting"></span>
        
        <label >Password</label>
        <input class="form-control" name="password"  type="text">
        <span class="lighting"></span>
             

      <button type="submit" id="login" class="btn btn-success">Login</button>
      <div class="clearfix supporter">
      </div>
      </div>
    </form>
       
</div>
</div>
</body>
</html>
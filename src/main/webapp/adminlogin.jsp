<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false" %>
    <%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adventure</title>
	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 

<%@include file="component/allcss.jsp" %>

<link rel="stylesheet" type="text/css" href="component/applycss.css">


<style type="text/css">
body{
background-image: url('assets/img/admin.jpg');
 background-repeat: no-repeat;
  width: 100%;
  height: 100vh;
  background-size: cover;
  background-position: center;
  justify-content: center;
  justify-items: center;
 
}
input{
      background:transparent;
}
</style>
</head>

<body>
<div class="no-margin row bg-secondary">
	<%@include file="component/navebar.jsp" %>
</div>
 <!-- **************************************************************** -->
 
 
 
 <div class="page-nav no-margin row d-flex justify-content-center align-item-center mt-5 " >

<div class="wrapper" id="box">
  <div class="inner-wrapper text-center" id="box">
<c:if test="${not empty succMsg }">
  <h4><p class="text-center text-success fs-10">${succMsg}</p></h4>
  
  <c:remove var="succMsg" scope="session" />
  </c:if>
  
  
  <c:if test="${not empty errorMsg}">
  <h4><p class="text-center text-danger fs-10">${errorMsg}</p></h4>
  <c:remove var="errorMsg" scope="session" />
  </c:if> 
  
  
    <h1 class="title text-center"> admin Login </h1>
    <form action="admin"  method="post" >
    
        <label class="mt-5"><h4>Id</h4></label>
        <input class="form-control" name="id"  type="text">
        <span class="lighting"></span>
      
      
        <label class="mt-3"><h4>Password</h4></label>
        <input class="form-control" name="password" type="password">
        <span class="lighting"></span>
     

      <button type="submit" id="login" class="btn btn-success mt-5">Login</button>
      <div class="clearfix supporter">
    
      </div>
    </form>
       <div class="signup-wrapper text-center">
    <a href="#"> <span class="text-primary">....</span></a>
  </div>
  </div>

</div>
</div>

</body>
</html>
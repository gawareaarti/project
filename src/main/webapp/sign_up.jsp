<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allcss.jsp" %>
<link rel="stylesheet" type="text/css" href="component/login_1.css">
<script src="component/userrig.js"></script>



<style type="text/css">
body{
background-image: url('assets/img/aaru4.jpg');
 background-repeat: no-repeat;
  width: 100%;
  height: 100vh;
  background-size: cover;
  background-position: center;
  
 
}
</style>
</head>
<body>

 <%@include file="component/navebar.jsp" %>
 
 
 
 <!-- **************************************************************** -->
 
  <div class="page-nav no-margin row d-flex justify-content-center align-item-center mt-5 " >
 
 
 
 <div class="page-nav no-margin row">

<div class="wrapper">
  <div class="inner-warpper text-center">
  <!-- ************************************ errror masg -->
  <c:if test="${not empty sucMsg }">
  <h4><p class="text-center text-success fs-10">${sucMsg}</p></h4>
  
  <c:remove var="sucMsg" scope="session" />
  </c:if>
  
  <c:if test="${not empty errorMsg }">
  <h4><p class="text-center text-danger fs-10">${errorMsg}</p></h4>
  <c:remove var="errorMsg" scope="session" />
  </c:if> 
  
  <!-- ************************************************* -->
  
  
  
    <h2 class="title text-center ">New Register</h2>
    <form action="userregi"  method="post">
   
      <div class="form-control ">
       <div class="col-md-12 " >
        <label>User Name</label>
        <input class="form-control" name="userName" id="userName" type="text" >
       <p id="user1"></p>
        <span class="lighting" name="massg"></span>
      
           <label >FULL Name</label>
        <input class="form-conuserregitrol" name="full_NAME"  id="email" type="text"  >
        <p id="emailp"></p>
        <span class="lighting"></span>
      </div>
      <div class="col-offset-2" >
        <label >address</label>
        <input class="form-control" name="address" id="userPassword" type="text" placeholder=""  />
        <p id="pass"></p>
        <span class="lighting"></span>
        
         <label >Contact</label>
        <input class="form-control" name="contect"  id="email" type="text"  >
        <p id="emailp"></p>
        <span class="lighting"></span>
        
         <label >Password</label>
        <input class="form-control" name="password"  id="email" type="text" >
        <p id="emailp"></p>
        <span class="lighting"></span>
        
        
        <input type="submit" value="submit" class="btn btn-success">

      
      <div class="clearfix supporter">
        <div class="pull-left remember-me">
          
        </div>
       
      </div>
      </div>
      </div>
    </form>
   
    
    <div class="col-sm-9 d-none d-lg-block appoint text-center "> 
        <button class="btn btn-info"><a href="userlogin.jsp">Back_to login</a></button> 
      </div>
    </div>
  </div>
     
      
 </div>
<!-- ************************************* -->


</div>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page import="java.sql.Connection" %>
<%@ page import="com.db.*"%>
<%@ page import="com.entity.*"%>
<%@ page import="com.dao.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.admin.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adventure</title>
	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 

<%@include file="allcss.jsp" %>
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
  
   
    <%
    String td=request.getParameter("id");
   
    	%>
    <h2 class="title text-center"> admin Login </h2>
    
    <form action="../touristguidelogin"  method="post">
      <div class="form-control">
    
         
         <label >Admin Id </label>
        <input class="form-control" name="id"  type="hidden" value="<%=td%>"">
        <span class="lighting"></span>
      
        <label >Password</label>
        <input class="form-control" name="password" type="password">
        <span class="lighting"></span>
     

      <button type="submit" id="login" class="btn btn-success">Login</button>
      <div class="clearfix supporter">
      </div>
      </div>
    </form>
       <div class="signup-wrapper text-center">
    <a href="#"> <span class="text-primary">....</span></a>
  </div>
  </div>

</div>
</div>
<div class="h-250px mt-4">
<%@include file="../component/footer.jsp" %>
</div>
</body>
</html>
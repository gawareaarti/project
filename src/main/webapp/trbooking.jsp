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
<title>Insert title here</title>
<%@include file="component/allcss.jsp" %>
<link rel="stylesheet" type="text/css" href="component/login_1.css">
<script src="component/userrig.js"></script>
</head>
<body>


<c:if test="${empty  userObj}">

<c:redirect url="userlogin.jsp"></c:redirect>

</c:if>

 
 <div class=" row bg-secondary ">

<%@include file="component/navebar.jsp" %>

</div>
 <div class="page-nav no-margin row d-flex justify-content-center align-item-center mt-5 " >
 
 
 <!-- **************************************************************** -->
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
<%
String Hd1=request.getParameter("id");
user d=(user)session.getAttribute("userObj");
String cid=d.getCid();
%>



 <!-- ************************************************* -->
    <h2 class="title text-center">TOURISM GUIDE BOOKING</h2>
    <form action="guidebook"  method="post">
   
   <input class="form-control" value="<%=Hd1%>" name="hid" id="hid" type="hidden">
    <input class="form-control" value="<%=cid %>" name="cid" id="cid" type="hidden">
   
   
      <div class="form-control ">
       <div class="col-md-12 " >
     
        
         <label >C_NAME</label>
        <input class="form-control" name="C_NAME"  id="C_NAME" type="text"  >
        <p id="emailp"></p>
        <span class="lighting"></span>
        
         <label >C_CONTACT</label>
        <input class="form-control" name="C_CONTACT"  id="C_CONTACT" type="text" >
        <p id="emailp"></p>
        <span class="lighting"></span>
        
        <label >PLACE</label>
        <input class="form-control" name="PLACE"  id="PLACE" type="text" >
        <p id="emailp"></p>
        <span class="lighting"></span>
        
        <label >B_DATE</label>
        <input class="form-control" name="B_DATE"  id="B_DATE" type="date" >
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

</body>
</html>
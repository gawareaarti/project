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
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 

<%@include file="allcss.jsp" %>
<link rel="stylesheet" type="text/css" href="../component/applycss.css">
<style>
body{
           background-image: url('../assets/img/aaru22.jpg');
	       width: 100%;
	       height: 100vh;
			background-size: cover;
			background-position: center;
		    background-repeat: no-repeat;
			justify-content: center;
			justify-items: center;
		}
		input{
			border: none;
			background-color: rgba(255, 255, 255, 0.13) ;
			outline: none;
		}
</style>
</head>
<body>
<div class=" row bg-secondary ">

<%@include file="navebar1.jsp" %>

</div>
 <!-- **************************************************************** -->
 <div class="page-nav no-margin row d-flex justify-content-center align-item-center mt-5 " >

<div class="wrapper ">
  <div class="inner-warpper text-center mt-5">
  
  
  
  
  <c:if test="${not empty sucMsg }">
   <h4><p class="text-center text-success fs-10">${sucMsg}</p></h4>
   <c:remove var="sucMsg" scope="session" />
  </c:if> 
  
  <c:if test="${not empty errorMsg}">
  <h4><p class="text-center text-danger fs-10">${errorMsg}</p></h4>
  <c:remove var="errorMsg" scope="session" />
  </c:if> 
  
  
    <h2 class="title text-light">NEW REGISTER </h2>
    
    <form action="../edittravelerdetails"  method="post" id="box">
      <div class="form-control">
      
      
       <%
       String td=request.getParameter("id");
       int id=Integer.parseInt(td);
       travelerdao dao=new travelerdao(Dbconnection.getConn());
       travelerdetails d=dao.gettravelerdetailsid(id);
     
    	%>
        <label >Traveler Name</label>
        <input class="form-control" name="travelername"  type="text" value="<%=d.getName()%>">
        <span class="lighting"></span>
         
         <label >Place</label>
        <input class="form-control" name="manager"  type="text" value="<%= d.getPlace() %>">
        <span class="lighting"></span>
      
        <label >Contact</label>
        <input class="form-control" name="contact" type="text" value="<%=d.getContact()%>">
        <span class="lighting"></span>
        
        <label >Services</label>
        <input class="form-control" name="services"  type="text" value="<%=d.getService() %>">
        <span class="lighting"></span>
        
       <label >Password</label>
        <input class="form-control" name="pass1"  type="text" value="<%= d.getPassword() %>">
        <span class="lighting"></span>
     
         <input class="form-control" name="idl"  type="hidden" value="<%=d.getTid() %>">
      <button type="submit" id="login" class="btn btn-success">Submit</button>
      <div class="clearfix supporter">
      </div>
      </div>
    </form>
       </div>
</div>
</div>
</body>
</html>
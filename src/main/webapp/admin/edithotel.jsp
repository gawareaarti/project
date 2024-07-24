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
           background-image: url('../assets/img/aaru18.jpg');
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
<div class="row bg-secondary ">

<%@include file="navebar1.jsp" %>

</div>
 <!-- **************************************************************** -->
 <div class="page-nav no-margin row d-flex justify-content-center align-item-center " >


  <div class="inner-warpper text-center" >
  
  
  
  
  <c:if test="${not empty sucMsg }">
   <h4><p class="text-center text-success fs-10">${sucMsg}</p></h4>
   <c:remove var="sucMsg" scope="session" />
  </c:if> 
  
  <c:if test="${not empty errorMsg}">
  <h4><p class="text-center text-danger fs-10">${errorMsg}</p></h4>
  <c:remove var="errorMsg" scope="session" />
  </c:if> 
  
  
    <h2 class="title text-light mt-5">NEW REGISTER </h2>
    
    <form action="../edithoteldetails"  method="post" id="box">
            <div class="form-control">
      
      
       <%
       String td=request.getParameter("id");
       int id=Integer.parseInt(td);
    hoteldao dao=new hoteldao(Dbconnection.getConn());
    hoteldetals d=dao.gethoteldetalsid(id);
  
    	%>
        <label >Hotel Name</label>
        <input class="form-control" name="hotelname"  type="text" value="<%=d.getHotelname()%>">
        <span class="lighting"></span>
         
         <label >Manager</label>
        <input class="form-control" name="manager"  type="text" value="<%=d.getManager()%>">
        <span class="lighting"></span>
      
        <label >Contact</label>
        <input class="form-control" name="contact" type="text" value="<%=d.getContact()%>">
        <span class="lighting"></span>
        
        <label >Address </label>
        <input class="form-control" name="address"  type="text" value="<%=d.getAddress1()%>">
        <span class="lighting"></span>
        
        <label >Rate1</label>
        <input class="form-control" name="rate1"  type="text" value="<%=d.getRate1()%>">
        <span class="lighting"></span>
        
        <label >Rate2 </label>
        <input class="form-control" name="rate2"  type="text" value="<%= d.getRate2()%>">
        <span class="lighting"></span>
        
        <label >Rate3</label>
        <input class="form-control" name="rate3"  type="text" value="<%= d.getRate3() %>">
        <span class="lighting"></span>
        
        <label >Rate4</label>
        <input class="form-control" name="rate4"  type="text" value="<%=d.getRate4()%>">
        <span class="lighting"></span>
     
     <label >Password</label>
        <input class="form-control" name="Pass"  type="text" value="<%=d.getPassword() %>">
        <span class="lighting"></span>

         <input class="form-control" name="id"  type="hidden" value="<%=d.getHid() %>">
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
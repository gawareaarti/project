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
<link rel="stylesheet" type="text/css" href="component/applycss.css">


<style type="text/css">
body{
background-image: url('assets/img/aaru16.jpg');
 background-repeat: no-repeat;
  width: 100%;
  height: 100vh;
  background-size: cover;
  background-position: center;
  
 
}
#box{
font-color:white;
}
</style>

</head>

<body>
<div class=" row bg-secondary ">

<%@include file="component/navebar.jsp" %>

</div>
 <div class="page-nav no-margin row d-flex justify-content-center align-item-center mt-5 " >

<div class="wrapper ">


<div class="page-nav mt-5" >
<table class="text-dark text-center m-auto "  width="800px" border="2" height="300px" id="box">
<thead >
                 <tr>
                     
                     <td><h3>NAME</h3></td>
                     <td><h3>PLACE</h3></td>
                     <td><h3>CONTACT</h3></td>
                     <td><h3>SERVICE</h3></td>                                     
                     <td><h3>booking</h3></td>                 
                 </tr>
              </thead>
           <tbody>
    
    <%
    travelerdao dao=new travelerdao(Dbconnection.getConn());
    List<travelerdetails> list=dao.gettravelerdetails();
    for(travelerdetails ap:list){
    	%>
    <tr>
    
    <td><h4><%=ap.getName() %></h4></td>
    <td><h4><%=ap.getPlace() %></h4></td>
     <td><h4><%=ap.getContact() %></h4></td>
     <td><h4><%=ap.getService() %></h4></td>
   
     <td><h5><a href="Tbooking.jsp?id=<%=ap.getTid() %>">booking</a></h5></td>       
         
            
    
    
    </tr>
    
    <%}
    %>
    
     
          </tbody>
          
</table>
</div>
</div>
</div>
</body>
</html>
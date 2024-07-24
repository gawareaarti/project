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
background-image: url('assets/img/aaru14.jpg');
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
<div class="row bg-secondary ">

<%@include file="component/navebar.jsp" %>

</div>
 <div class="page-nav no-margin row d-flex justify-content-center align-item-center mt-5 " >

<div class="wrapper ">


<div class="page-nav mt-1" >
<table class="text-dark text-center mt-4 "  width="800px" border="2" height="300px" id="box">
<thead >
                 <tr>
                     
                     <td><h4>Hotel Name</h4></td>
                     <td><h4>Manager</h4></td>
                     <td><h4>Contact</h4></td>
                     <td><h4>Address</h4></td>                    
                     <td><h4>Rate for sigle person</h4></td>  
                     <td><h4>Rate for couple</h4></td>                     
                     <td><h4>Rate for group</h4></td>                     
                     <td><h4>Rate for Ac with high class room</h4></td>                     
                      <td><h4>Booking</h4></td>
                                      
                                        
                 </tr>
          </thead>
           <tbody>
    
    <%
    hoteldao dao=new hoteldao(Dbconnection.getConn());
    List<hoteldetals> list=dao.gethoteldetals();
    for(hoteldetals ap:list){
    	%>
    <tr>
    
    <td><h5><%=ap.getHotelname() %></h5></td>
    <td><h5><%=ap.getManager() %></h5></td>
    <td><h5><%=ap.getContact() %></h5></td>
    <td><h5><%=ap.getAddress1() %></h5></td> 
    <td><h5><%=ap.getRate1() %></h5></td>
    <td><h5><%=ap.getRate2() %></h5></td> 
    <td><h5><%=ap.getRate3() %></h5></td>
    <td><h5><%=ap.getRate4() %></h5></td>  
        
     <td><a href="Hbooking.jsp?id=<%=ap.getHid()%>">booking</a></td>       
    
    
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
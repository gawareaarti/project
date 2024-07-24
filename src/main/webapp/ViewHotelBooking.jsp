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
<style>
body{
           background-image: url('assets/img/aaru10.jpg');
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

<%@include file="component/navebar.jsp" %>

</div>
 <div class="page-nav no-margin row d-flex justify-content-center align-item-center mt-5 "  >

<div class="wrapper " >


<div class="page-nav mt-5" >
<h2 class="text-center">Hotel Bookings</h2>
<table class="text-dark  mt-4 "  width="800px" border="2" height="300px" >
<thead >
                 <tr class="text-center">
                     
                     <td><h4>C_Name</h4></td>
                     <td><h4>Contact</h4></td>
                     <td><h4>Join_Date</h4></td>
                     <td><h4>Leave_Date</h4></td>                    
                                           
                 </tr>
          </thead>
           <tbody>
    
    <%
    user d=(user)session.getAttribute("userObj");
    String cid=d.getCid();
    int cid1=Integer.parseInt(cid);
    hoteldao dao=new hoteldao(Dbconnection.getConn());
    List<hotelbooking> list=dao.gethotelbookingcid(cid1);
    for(hotelbooking ap:list){
    	%>
    <tr class="text-center">
    
    <td><%=ap.getCname()%></td>
    <td><%=ap.getCcontact()%></td>
    <td><%=ap.getJoin_date()%></td>
    <td><%=ap.getLave_date()%></td>     
    
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
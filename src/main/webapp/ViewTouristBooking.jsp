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
           background-image: url('assets/img/aaaa1.jpg');
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
 <div class="page-nav no-margin row d-flex justify-content-center align-item-center mt-5 " >

<div class="wrapper ">

<h2 class="text-center">Tourist Bookings</h2>

<div class="page-nav mt-5" >
<table class="text-dark  mt-4 "  width="800px" border="2" height="300px" >
<thead >
                 <tr class="text-center">
                     
                     <td><h4>C_NAME</h4></td>
                     <td><h4>C_CONTACT</h4></td>
                     <td><h4>PLACE</h4></td>
                     <td><h4>B_DATE</h></td>                    
                                           
                 </tr>
          </thead>
           <tbody>
    
    <%
    user d=(user)session.getAttribute("userObj");
    String cid=d.getCid();
    int cid1=Integer.parseInt(cid);
    guiddao dao=new guiddao(Dbconnection.getConn());
    List<guidbooking> list=dao.gettouristbookingt_id(cid1);
    for(guidbooking ap:list){
    	%>
    <tr class="text-center">
    
   <td><h5><%=ap.getCname() %></h5></td>
   <td><h5><%=ap.getCcontact() %></h5></td>
   <td><h5><%=ap.getCcontact() %></h5></td>
   <td><h5><%=ap.getB_date() %></h5></td>
    
    </tr>
    
    <%
    }
    %>
     
          </tbody>
         
          
</table>
</div>
</div>
</div>
</body>
</html>
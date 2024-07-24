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
<%@include file="allcss.jsp" %>
<link rel="stylesheet" type="text/css" href="../component/applycss.css">
<style>
body{
           background-image: url('../assets/img/aaru13.jpg');
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
 
<div class=" row bg-secondary ">

<%@include file="navebar1.jsp" %>

</div>

 <div class="page-nav no-margin row d-flex justify-content-center align-item-center mt-5 " >

<div class="wrapper ">


<div class="page-nav mt-5" >
<table class="text-dark  m-auto "  width="800px" border="2" height="300px" cellpadding="10px" id="box" >
<thead class="thead-dark align-center">
                 <tr>
                     
                     <td><h3>hotel Name</h3></td>
                     <td><h3>Manager</h3></td>
                     <td><h3>Contact</h3></td>
                     <td><h3>Address</h3></td>                                         
                     <td><h3>Booking</h3></td> 
                     <td><h3>Action</h3></td>                
                 </tr>
          </thead>
           <tbody>
    
    <%
    hoteldao dao=new hoteldao(Dbconnection.getConn());
    List<hoteldetals> list=dao.gethoteldetals();
    for(hoteldetals ap:list){
    	%>
    <tr class="text-center">
    
    <td><h4><%=ap.getHotelname() %></h4></td>
    <td><h4><%=ap.getManager() %></h4></td>
    <td><h4><%=ap.getContact() %></h4></td>
    <td><h4><%=ap.getAddress1() %></h4></td> 
    <td><h4><a href="adminlogin.jsp?id=<%=ap.getHid()%>">booking</a></h4></td> 
    <td>
    <a href="edithotel.jsp?id=<%=ap.getHid()%>" class="btn btn-sm btn-primary ">edit</a>
    <a href="../deletehotel?id=<%=ap.getHid()%>" class="btn btn-sm btn-primary ">delete</a>
    
    </td>
    
            
    
    
    </tr>
    
    <%}
    %>
    
     
          </tbody>
          
</table>
</div>
</div>
</div>

</div>
</body>
</html>
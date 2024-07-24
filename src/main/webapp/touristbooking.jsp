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
background-image: url('assets/img/aaru17.jpg');
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


<div class="page-nav mt-5" >
<table class="text-dark text-center m-auto "  width="800px" border="2" height="300px" id="box">
<thead >
                 <tr>
                     
                     <td><h3>G_NAME</h3></td>
                     <td><h3>G_PLACE</h3></td>
                     <td><h3>G_CONTACT</h3></td>
                     <td><h3>RATE</h3></td>                    
                     <td><h3>RATE_GROUP</h3></td>                    
                     <td><h3>Booking</h3></td>               
                 </tr>
          </thead>
           <tbody>
    
    <%
    guiddao dao=new guiddao(Dbconnection.getConn());
    List<guiddetals> list=dao.gettravelerdetails();
    for(guiddetals ap:list){
    	
    	%>
    <tr>
    
   <td><h4><%=ap.getGname()%></h4></td>
   <td><h4><%=ap.getGplace()%></h4></td>
   <td><h4><%=ap.getGcontacet() %></h4></td>
   <td><h4><%=ap.getRate1() %></h4></td>
   <td><h4><%=ap.getRate_group()%></h4></td>
   
   <td><a href="trbooking.jsp?id=<%=ap.getId()%>">booking</a></td> 
  
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
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
           background-image: url('assets/img/aaru21.jpg');
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

<%@include file="component/navebar.jsp" %>

</div>
 <div class="page-nav no-margin row d-flex justify-content-center align-item-center mt-5 " >

<div class="wrapper ">

<h2 class="text-center">Travelers Bookings</h2>

<div class="page-nav mt-5" >
<table class="text-dark  mt-4 "  width="800px" border="2" height="300px" id="box">
<thead >
                 <tr class="text-center">
                     
                     <td><h3>C_NAME</h3></td>
                     <td><h3>P_PNAME</h3></td>
                     <td><h3>TO_PLACE</h3></td>
                     <td><h3>CONTACT</h3></td>                    
                     <td><h3>B_DATE</h3></td>                    
                                           
                 </tr>
          </thead>
           <tbody>
    
    <%
    user d=(user)session.getAttribute("userObj");
    String cid=d.getCid();
    int cid1=Integer.parseInt(cid);
    travelerdao dao=new travelerdao(Dbconnection.getConn());
    List<travelerbooking> list=dao.gettravelerbookingt_id(cid1);
    for(travelerbooking ap:list){
    	%>
    <tr class="text-center">
    
   <td><h4><%=ap.getCname() %></h4></td>
   <td><h4><%=ap.getPalce() %></h4></td>
   <td><h4><%=ap.getTo_palce() %></h4></td>
   <td><h4><%=ap.getCcontact() %></h4></td>
   <td><h4><%=ap.getB_date() %></h4></td>
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
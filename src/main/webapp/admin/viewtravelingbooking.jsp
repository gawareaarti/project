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

<style type="text/css">
body{
background-image: url('../assets/img/aaru11.jpg');
background-repeat: no-repeat;
background-size: cover;
}
table{
	background-color: white;

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
<table class="text-dark  mt-4 "  width="800px" border="2" height="300px" id="box">
<thead >
                 <tr>
                     
                     <td><h5>C_Name</h5></td>
                     <td><h5>p_place</h5></td>
                     <td><h5>To_place</h5></td>
                     <td><h5>Contact</h5></td>                    
                     <td><h5>B_Date</h5></td>                    
                                           
                 </tr>
          </thead>
           <tbody>
     
    
    <%
    travelerdetails d=(travelerdetails)session.getAttribute("travel");
    int cid=d.getTid();
    travelerdao dao=new travelerdao(Dbconnection.getConn());
    List<travelerbooking> list=dao.gettravelerbookingt_id(cid);
    for(travelerbooking ap:list){
    	%>
    <tr>
    
   <td> <%=ap.getCname() %></td>
   <td><%=ap.getPalce() %></td>
   <td><%=ap.getTo_palce() %></td>
   <td><%=ap.getCcontact() %></td>
   <td><%=ap.getB_date() %></td>
    <td>
    <a href="../admintravelerbookingdelete?id=<%=ap.getCid() %>" class="btn btn-sm btn-primary ">delete</a>
    
    </td> 
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
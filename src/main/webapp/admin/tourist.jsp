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
background-image: url('../assets/img/aaru10.jpg');
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
<table class="text-dark  m-auto "  width="800px" border="2" height="300px" id="box">
<thead >
                 <tr class="text-center">
                     
                     <td><h5>G_NAME</h5></td>
                     <td><h5>G_PLACE</h5></td>
                     <td><h5>G_CONTACT</h5></td>      
                     <td><h5>Booking</h5></td>
                     <td><h5>Action</h5></td>
                 </tr>
          </thead>
           <tbody>
    
    <%
    guiddao dao=new guiddao(Dbconnection.getConn());
    List<guiddetals> list=dao.gettravelerdetails();
    for(guiddetals ap:list){
    	%>
    <tr class="text-center">
    
    <td><h4><%=ap.getGname() %></h4></td>
    <td><h4><%=ap.getGplace() %></h4></td>
    <td><h4><%=ap.getGcontacet() %></h4></td>
    <td><h4><a href="touristlogin.jsp?id=<%=ap.getId()%>">booking</a></h4></td> 
     
    <td>
    <a href="" class="btn btn-sm btn-primary">edit</a>
    <a href="../deletetourist?id=<%=ap.getId()%>" class="btn btn-sm btn-primary ">delete</a>
    
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
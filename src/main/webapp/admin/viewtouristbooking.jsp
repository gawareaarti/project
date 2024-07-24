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
<table class="text-dark  mt-4 "  width="800px" border="2" height="300px" id="box" >
<thead >
                 <tr>
                     
                     <td><h5>C_NAME</h5></td>
                     <td><h5>C_CONTACT</h5></td>
                     <td><h5>PLACE</h5></td>
                     <td><h5>B_DATE</h5></td>                    
                     <td><h5>Action</h5></td>                   
                                           
                 </tr>
          </thead>
           <tbody>
   
    <%
  
    guiddetals d=(guiddetals)session.getAttribute("userObj");
    String cid=d.getId();
    int cid1=Integer.parseInt(cid);
    
    guiddao dao=new guiddao(Dbconnection.getConn());
    List<guidbooking> list=dao.gettouristbookingid(cid1);
    for(guidbooking ap:list){
    	%>
    <tr>
    
   <td><%=ap.getCname() %></td>
   <td><%=ap.getCcontact() %></td>
   <td><%=ap.getCcontact() %></td>
   <td><%=ap.getB_date() %></td>
        <td>
    <a href="../adminguidedelete?id=<%=ap.getId() %>" class="btn btn-sm btn-primary ">delete</a>
    
    </td>  
    
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
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@page isELIgnored="false" %>
    <%@page import="java.sql.Connection" %>
 <!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
	
		<!-- Site Title -->
		<title>Adventure</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
		<%@include file="../component/allcss.jsp" %>
</head>
<body>
	
<!-- start banner Area -->
			<section class="banner-area " id="home">
				<!-- Start Header Area -->
				<header class="default-header">
					<nav class="navbar navbar-expand-lg  navbar-light ">
						<div class="container">
							  <a class="navbar-brand" href="index.html">
							  	<img src="assets/img/logo.png" alt="">
							  </a>
							  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							    <span class="text-white lnr lnr-menu"></span>
							  </button>
							  
							  
                                      <c:if test="${empty userObj}">
	
							  <div class="collapse navbar-collapse justify-content-end align-items-center" id="navbarSupportedContent">
							    <ul class="navbar-nav">
							    
									<li><a href="index.jsp">Home</a></li>
									<li><a href="about.jsp">About</a></li>									
									<li><a href="service.jsp">Service</a></li>
									<li><a href="gallery.jsp">Gallery</a></li>

								
									<!-- Dropdown -->
								    <li class="dropdown">
								      <a class="dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
								        login
								      </a>
								      <div class="dropdown-menu">
								        <a class="dropdown-item" href="userlogin.jsp">user</a>
								        <a class="dropdown-item" href="adminlogin.jsp">admin</a>
								      </div>
								    </li>
								    </c:if>
								    <c:if test="${not empty userObj}">
								    
								    <li><a href="index.jsp">Home</a></li>
									<li><a href="about.jsp">About</a></li>									
									<li><a href="service.jsp">Service</a></li>
									<li><a href="gallery.jsp">Gallery</a></li>
									<li class="dropdown">
								      <a class="dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
								        View Booking
								      </a>
								      <div class="dropdown-menu">
								        <a class="dropdown-item" href="ViewHotelBooking.jsp">View Hotel Booking</a>
								        <a class="dropdown-item" href="ViewTravelerBooking.jsp">View Traveler Booking</a>
								        <a class="dropdown-item" href="ViewTouristBooking.jsp">View Tourist Booking</a>
								        
								      </div>
								    </li>								    
								    
								    
								    
								     <li class="dropdown">
								     <i></i>${userObj.username}
								      <a class="dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
								        login
								      </a>
								      <div class="dropdown-menu">
								        <a class="dropdown-item" href="userlogout">LogOut</a>
								      
								      </div>
								    </li>
								    
								    
								    
								    
								    
								    </c:if>
							    </ul>
							  </div>						
						</div>
					</nav>
				</header>
				<!-- End Header Area -->				
			</section>


</body>
</html>
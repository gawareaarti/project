<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
 <!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
	
		<!-- Site Title -->
		<title>Adventure</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
		<%@include file="../../component/allcss.jsp" %>
</head>
<body>
	
<!-- start banner Area -->
			<section class="banner-area " id="home">
				<!-- Start Header Area -->
				<header class="default-header bg-secondary">
					<nav class="navbar navbar-expand-lg   ">
						<div class="container ">
							  <a class="navbar-brand" href="index.html">
							  	<img src="assets/img/logo.png" alt="">
							  </a>
							  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							    <span class="text-white lnr lnr-menu"></span>
							  </button>

							  <div class="collapse navbar-collapse justify-content-end align-items-center" id="navbarSupportedContent">
							    <ul class="navbar-nav">
									<li><a href="index.jsp">HOME</a></li>
									<li><a href="addhotel.jsp">ADD HOTEL</a></li>									
									<li><a href="ADDTRAVELLERS.jsp">ADD TRAVELLER</a></li>
									<li><a href="tourist_guide.jsp">ADD TOURIST GUIDE</a></li>
									<li><a href="emergency_services.jsp">EMERGENCY SERVISES</a></li>
								
									<!-- Dropdown -->
								    <li class="dropdown">
								      <a class="dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
								        login
								      </a>
								      <div class="dropdown-menu">
								        <a class="dropdown-item" href="../adminlogout">LogOut</a>
								      </div>
								    </li>
							    </ul>
							  </div>						
						</div>
					</nav>
				</header>
				<!-- End Header Area -->				
			</section>


</body>
</html>
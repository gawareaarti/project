 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
    <%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adventure</title>
	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 

<%@include file="component/allcss.jsp" %>
</head>

<body>

<div class="no-margin row bg-secondary">
	<%@include file="component/navebar.jsp" %>
</div>
<!-- Start feature Area -->
			<section class="feature-area section-gap" id="secvice">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-60 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Some Features that Made us Unique</h1>
								<p>Who are in extremely love with eco friendly system.</p>
							</div>
						</div>
					</div>						
					<div class="row " >
						<div class="col-lg-4 col-md-6" style="height:100px">
							<div class="single-feature mb-30">
								<div class="title d-flex flex-row pb-20">
									<span class="lnr lnr-user"></span>
									<h4><a href="bookinghotel.jsp">Hotel Booking</a></h4>
								</div>
								<p>
						       Usage of the Internet is becoming more common due to rapid advancement of technology and power.
									
								</p>							
							</div>							
						</div>
						<div class="col-lg-4 col-md-6 ">
							<div class="single-feature mb-30">
								<div class="title d-flex flex-row pb-20">
									<span class="lnr lnr-license"></span>
									<h4><a href="Travelerbooking.jsp">Traveler Booking</a></h4>
								</div>
								<p>
									Usage of the Internet is becoming more common due to rapid advancement of technology and power.
								</p>							
							</div>							
						</div>
						<div class="col-lg-4 col-md-6 ">
							<div class="single-feature mb-30">
								<div class="title d-flex flex-row pb-20">
									<span class="lnr lnr-phone"></span>
									<h4><a href="touristbooking.jsp">Tourist guide Booking</a></h4>
								</div>
								<p>
									Usage of the Internet is becoming more common due to rapid advancement of technology and power.
								</p>							
							</div>							
						</div>
						<div class="col-lg-4 col-md-6 ">
							<div class="single-feature">
								<div class="title d-flex flex-row pb-20">
									<span class="lnr lnr-rocket"></span>
									<h4><a href="#">Tourist places Booking</a></h4>
								</div>
								<p>
									Usage of the Internet is becoming more common due to rapid advancement of technology and power.
								</p>							
							</div>							
						</div>
						<div class="col-lg-4 col-md-6 ">
							<div class="single-feature">
								<div class="title d-flex flex-row pb-20">
									<span class="lnr lnr-diamond"></span>
									<h4><a href="#">Highly Recomended</a></h4>
								</div>
								<p>
									Usage of the Internet is becoming more common due to rapid advancement of technology and power.
								</p>							
							</div>							
						</div>
						<div class="col-lg-4 col-md-6 ">
							<div class="single-feature">
								<div class="title d-flex flex-row pb-20">
									<span class="lnr lnr-bubble"></span>
									<h4><a href="#">emergency service</a></h4>
								</div>
								<p>
									Usage of the Internet is becoming more common due to rapid advancement of technology and power.
								</p>							
							</div>							
						</div>																					
					</div>
				</div>	
			</section>
			<%@include file="component/footer.jsp" %>
			<!-- End feature Area -->
</body>
</html>
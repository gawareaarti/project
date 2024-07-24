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
<section class="section-gap info-area "  id="about">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-40 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Why Choose Us for Tourism</h1>
								<p>Who are in extremely love with eco friendly system.</p>
							</div>
						</div>
					</div>					
					<div class="single-info row mt-40" >
						<div class="col-lg-6 col-md-12 mt-120 text-center no-padding info-left">
							<div class="info-thumb">
								<img src="assets/img/aaa(2).jpg" class="img-fluid" alt="" style="height:600px">
							</div>
						</div>
						<div class="col-lg-6 col-md-12 no-padding info-rigth">
							<div class="info-content">
								<h2 class="pb-30">Tourism Management System-Grow your business with our advanced,user-friendly online tourism management system <br>
			<br>
								</h2>
								<p>
								the tourism management system allows the user of the system access all the details such as location,events,atc.the main purpose is help tourism companies to manage customer and hotels etc. the system ca also be used for both professional and business trips. 
								</p>
								<br>
								<p>
								A tourism management system can helps to steamline a travel business's various operations,such as booking,scheduling,invoicing and payment processing.this automation helps to reduce the workload of the travel businees,improve efficiency,and increase productivity.
								</p>
								<br>
								<p>
								the aim of tourism management system to identify,manage and design strategies and management plans for tourist areas and destinations based on sustanability principle.
								</p>
								</div>
						</div>
					</div>
				</div>
			</section>
			
			<!-- Start project Area -->
			<section class="project-area section-gap" id="project">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-30 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Latest Project on the go</h1>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> labore  et dolore magna aliqua.</p>
							</div>
						</div>
					</div>						
					<div class="row justify-content-center d-flex">
						<div class="active-works-carousel mt-40 col-lg-8">
							<div class="item">
								<img class="img-fluid" src="assets/img/aaa(2).jpg" alt="">
								<div class="caption text-center mt-20">
									<h6 class="text-uppercase">Vector Illustration</h6>
									<p>LCD screens are uniquely modern in style, and the liquid crystals that make them work have <br> allowed humanity to create slimmer, more portable technology.</p>
								</div>
							</div>
							<div class="item">
								<img class="img-fluid" src="assets/img/aaa(1).jpg" alt="">
								<div class="caption text-center mt-20">
									<h6 class="text-uppercase">Vector Illustration</h6>
									<p>LCD screens are uniquely modern in style, and the liquid crystals that make them work have <br> allowed humanity to create slimmer, more portable technology.</p>
								</div>
							</div>
							<div class="item">
								<img class="img-fluid" src="assets/img/aaa(2).jpg" alt="">
								<div class="caption text-center mt-20">
									<h6 class="text-uppercase">Vector Illustration</h6>
									<p>LCD screens are uniquely modern in style, and the liquid crystals that make them work have <br> allowed humanity to create slimmer, more portable technology.</p>
								</div>
							</div>
							<div class="item">
								<img class="img-fluid" src="assets/img/aaa(2).jpg" alt="">
								<div class="caption text-center mt-20">
									<h6 class="text-uppercase">Vector Illustration</h6>
									<p>LCD screens are uniquely modern in style, and the liquid crystals that make them work have <br> allowed humanity to create slimmer, more portable technology.</p>
								</div>
							</div>
							<div class="item">
								<img class="img-fluid" src="assets/img/aaa(3).jpg" alt="">
								<div class="caption text-center mt-20">
									<h6 class="text-uppercase">Vector Illustration</h6>
									<p>LCD screens are uniquely modern in style, and the liquid crystals that make them work have <br> allowed humanity to create slimmer, more portable technology.</p>
								</div>
							</div>
						</div>
					</div>
				</div>	
			</section>
			
			<%@include file="component/footer.jsp" %>
</body>
</html>
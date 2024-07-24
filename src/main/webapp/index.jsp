 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
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
		<%@include file="component/allcss.jsp" %>
		</head>
		<body>
			<!-- ************************************** -->
			<%@include file="component/navebar.jsp" %>
			<!-- ************************************** -->
			<section class="default-banner active-blog-slider">
					<div class="item-slider relative" style="background: url(assets/img/slider1.jpg);background-size: cover;">
						<div class="overlay" style="background: rgba(0,0,0,.3)"></div>
						<div class="container">
							<div class="row fullscreen justify-content-center align-items-center">
								<div class="col-md-10 col-12">
									<div class="banner-content text-center">
										<h4 class="text-white mb-20 text-uppercase">Discover the Colorful World</h4>
										<h1 class="text-uppercase text-white">New Adventure</h1>
										<p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temp <br>
										or incididunt ut labore et dolore magna aliqua. Ut enim ad minim.</p>
										<a href="#" class="text-uppercase header-btn">Discover Now</a>
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="item-slider relative" style="background: url(assets/img/slider2.jpg);background-size: cover;">
						<div class="overlay" style="background: rgba(0,0,0,.3)"></div>
						<div class="container">
							<div class="row fullscreen justify-content-center align-items-center">
								<div class="col-md-10 col-12">
									<div class="banner-content text-center">
										<h4 class="text-white mb-20 text-uppercase">Discover the Colorful World</h4>
										<h1 class="text-uppercase text-white">New Trip</h1>
										<p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temp <br>
										or incididunt ut labore et dolore magna aliqua. Ut enim ad minim.</p>
										<a href="#" class="text-uppercase header-btn">Discover Now</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item-slider relative" style="background: url(assets/img/slider3.jpg);background-size: cover;">
						<div class="overlay" style="background: rgba(0,0,0,.3)"></div>
						<div class="container">
							<div class="row fullscreen justify-content-center align-items-center">
								<div class="col-md-10 col-12">
									<div class="banner-content text-center">
										<h4 class="text-white mb-20 text-uppercase">Discover the Colorful World</h4>
										<h1 class="text-uppercase text-white">New Experience</h1>
										<p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temp <br>
										or incididunt ut labore et dolore magna aliqua. Ut enim ad minim.</p>
										<a href="#" class="text-uppercase header-btn">Discover Now</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

			
		</body>
	</html>

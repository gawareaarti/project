 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false" %>
    <%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adventure</title>
	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 

<%@include file="component/allcss.jsp" %>

<link rel="stylesheet" type="text/css" href="component/applycss.css">


<style type="text/css">
body{
background-image: url('assets/img/aaru15.jpg');
 background-repeat: no-repeat;
  width: 100%;
  height: 100vh;
  background-size: cover;
  background-position: center;
  justify-content: center;
  justify-items: center;
 
}
</style>

</head>

<body>
<div class="no-margin row bg-secondary">
	<%@include file="component/navebar.jsp" %>
</div>
<section class="contact-area section-gap" id="contact">
				
<div class="container-fluid">

<div class="row justify-content-center">
				
							<div class="title  ">
								<h1 class="text-light p-5">Contact Us</h1>
							</div>
						</div>
														
	
	<div class="row">
	<div class="col-md-4">
			<i class="fa fa-map-marker fa-3x text-secondary text-light" aria-hidden="true"></i><h3  class="text-light">Location</h3>
			<p>Area,City,Country</p>
			
			<i class="fa fa-phone fa-3x text-secondary  text-light" aria-hidden="true"></i><h3 class="text-light">Call us</h3>
			<p>+92 453 3645544</p>
			
			<i class="fa fa-envelope fa-3x text-secondary text-light" aria-hidden="true"></i><h3  class="text-light">Email</h3>
			<p>info@gmail.com</p>
			
			
		</div>
		<div class="col-md-8">
		<div class="contactform">
		<form class="form-area " id="myForm" action="mail.php" method="post" class="contact-form text-right">
						<div class="row">	
						<div class=" col-lg-8 form-group">
							<input name="name" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" class="common-input mb-20 form-control" required="" type="text">
						
							<input name="email" placeholder="Enter email address" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="" type="email">

							<input name="subject" placeholder="Enter your subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your subject'" class="common-input mb-20 form-control" required="" type="text">
						</div>
						<div class="col-lg-8 form-group">
							<textarea class="common-textarea mt-10 form-control" name="message" placeholder="Messege" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Messege'" required=""></textarea>
							<button class="primary-btn mt-20">Send Message<span class="lnr lnr-arrow-right"></span></button>
							<div class="alert-msg">								
						</div>
						</div></div>
					</form>>
		
		</div>
		</div>
		
		</div>
        
    </div>
						
						
			<%@include file="component/footer.jsp" %>
</body>
</html>
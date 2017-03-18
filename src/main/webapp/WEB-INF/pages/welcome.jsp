<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



<!DOCTYPE html>
<html lang="en">

<head>

<%-- 	<spring:url value="/resources/css/grayscale.min.css" var="grayscale" />
	<spring:url value="/resources/img/contact-bg.jpg" var="contact-bg" />
	<spring:url value="/resources/img/downloads-bg.jpg" var="downloads-bg" />
	<spring:url value="/resources/img/intro-bg-city.jpg" var="intro-bg-city" />
	<spring:url value="/resources/img/intro-bg.jpg" var="intro-bg" />
	<spring:url value="/resources/img/intro-bg2.jpg" var="intro-bg2" />
	<spring:url value="/resources/img/map-marker.png" var="map-marker" />
	<spring:url value="/resources/css/font-awesome.min.css" var="font-awesome" />
	    
	    
	<c:url value="/resources/jquery/jquery.js"/>
	<c:url value="/resources/bootstrap/js/bootstrap.min.js" />
	<spring:url value="/resources/css/bootstrap.min.css" var="boot-min-css" />
	<c:url value="/resources/js/grayscale.min.js" var="grayscale-js" /> --%>



    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Wear Advisor</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />"> 
    
 
    <!-- Custom Fonts -->
    <link rel="stylesheet"href="<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <!-- Theme CSS -->
    <link href="<c:url value="/resources/css/grayscale.min.css" />" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="brand-heading">Wear Advisor</h1>
                        <form action="conditions" method="get">
                        <p class="intro-text">Type your city below and let us help you in choosing your clothing
                            <div class="form-group">
							  <label for="city" class="intro-text">City</label>
							  <input type="text" class="form-control input-lg" id="city" name="city">
							</div>
							
						</p>
						<button class="btn btn-circle page-scroll" type="submit" value="Submit">
								<i class="fa fa-angle-double-right animated"></i>
						</button>	
						</form>	
						
                    </div>
                </div>
            </div>
        </div>
    </header>
    
    <!-- Footer -->
    <footer>
        <div class="container text-center">
            <p>Copyright &copy; Wear Advisor 2017
			All icon made by <a href="https://icons8.com/">icons8.com</a> 
			</p>
        </div>
		
    </footer>

    <!-- jQuery -->
    <script src=<c:url value="/resources/vendor/jquery/jquery.js"/>></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

    <!-- Theme JavaScript -->
    <script src="<c:url value="/resources/js/grayscale.min.js"/>"></script>

</body>

</html>
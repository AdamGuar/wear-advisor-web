<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page pageEncoding="UTF-8"%>



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

    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href=".">
                    <i class="fa fa-backward" aria-hidden="true"></i> <span class="light">To region selection</span>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="navbar-brand page-scroll" href="#page-top">
		                    <span class="light">Conditions</span>
		                </a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">What to wear</a>
                    </li>
                    <!-- <li> -->
                        <!-- <a class="page-scroll" href="#download">Download</a> -->
                    <!-- </li> -->
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	<%@include file="dynamic.jsp" %>

    <!-- Download Section -->
    <!-- <section id="download" class="content-section text-center"> -->
        <!-- <div class="download-section"> -->
            <!-- <div class="container"> -->
                <!-- <div class="col-lg-8 col-lg-offset-2"> -->
                    <!-- <h2>Download Grayscale</h2> -->
                    <!-- <p>You can download Grayscale for free on the preview page at Start Bootstrap.</p> -->
                    <!-- <a href="http://startbootstrap.com/template-overviews/grayscale/" class="btn btn-default btn-lg">Visit Download Page</a> -->
                <!-- </div> -->
            <!-- </div> -->
        <!-- </div> -->
    <!-- </section> -->

    <!-- Contact Section -->
    <section id="contact" class="content-section text-center">
		<div class="download-section">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<h2>Contact the author</h2>
					<p>Feel free to leave any feedback regarding this page or anything :)</p>
					<p><a href="mailto:weather-advisor@gmail.com">adamguardev@gmail.com</a>
					</p>
					<ul class="list-inline banner-social-buttons">
						<li>
							<a href="https://github.com/AdamGuar" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
						</li>
					</ul>
					<p><a href="#page-top" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-up animated"></i>
                        </a>
				</p>
				</div>
			</div>
		</div>
    </section>



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

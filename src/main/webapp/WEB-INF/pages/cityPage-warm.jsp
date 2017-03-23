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

    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">
                    <i class="fa fa-play-circle"></i> <span class="light">Conditions</span>
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

    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="brand-heading">Conditions in ${city}</h1>
						<p class="intro-text">Temperature:
                            <br>${cond.temperature} °C</p>
						<p class="intro-text">Wind:
                            <br>${cond.windSpeed} km/h</p>
						<p class="intro-text">Real temperature:
                            <br>${cond.windChill} °C</p>
							
							
                        <a href="#about" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- About Section -->
    <section id="about" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Acording to weather conditions:</h2>
				<p>
				
					<!-- WARM -->
					<table>
					<tr>
						<td><img class="icon icons8-Sun" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACWklEQVRoQ+2ZP0vDYBDGn6BFUYdiQbCiOFhQURB0EcHFydkPoG76iexmv4CzU0EL4qKgKCrUQRQrCJYOtihVIpeSNGnfN0nT96KRZAokuTy/+5O7azVE/NAirh8xwG9HMI7Av46AnsU+dBxru8hxgbKlkCEe2DKE69jmgmABcIg3Xc8EoRxAKJ4RQimAq3gmiI4A9Cx0rmK029V2/DfYGMARkUQPkE4B6WFgoA9IDjUuV96B2idQKgOlN6D+7RrI8CNAwqfSQCYNJHrds6z+BRRLwH1JChIuAIlfnWt622+RUFQK10KI8ABI/PqSt9dlUBSNw7M2iHAAgnq+FUYQiXAAZseBmQm/CeN+3+0jcPNk3cMC4GhS3aZOK05rKnUwdvjqA20ddnIEWMyo8b5p5bwIPLw2bfqE8AQQjgfL043vvcqD+sPpndOiDwhXAOlss7YAJAdVym80u/xlu00PCCmA62C2saJWvGnt4ERs1wVCDrCHHDRsCi1GAcBYpGQQLClUBfIX6lLIGt9FEFEpYilElD6jQoioNTIbhG7tSlEbJYyippWSlkr6dhnD3Hz3/aBSBQpXjomUZRayAIwTG0Rkx+luIyHwvJmq/BGwisIWCVonaa30s1LSOklrpWQ3Dg/Ank50TnUxlgJGaanvb9YHebv2AbyUgee/uNSb6aRoQgo3Aq3ppACCDcBLm3R2sj/oY8b3eo/9uudC04kx1wGwUS/Kf2ZXDiCFYBBP72IBaINgEs8KYEEAR1z/zrADdFo/Qe5nS6EgYoI8EwME8ZrKZ+IIqPRmEFs/+zQSQEUJl2oAAAAASUVORK5CYII=" width="48" height="48"></td>
						<td>It is WARM outside better take this:</td>
					</tr>
					<tr>
						<td><td>
						<td>T-shirt</td>
						<td><img class="icon icons8-T-Shirt" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACv0lEQVRoQ+1W30tTYRh+3pyb1U4dMzSLZFIXUYQL+nEVTnSurlRog67c6A8Iobqt64TqHwjnXblIu6ncLCdBEHVxJLwIkpmBpqQdObPanL4xwyB152xnZ8To+26/933e93ne93v4CGV+qMz7hyDwrycoJlD2Exj0jMorjtVuMAcHJz44llKphwyK/8jQeFztUbMEPfJdeaeNmwjskavsgc7jx9IgClemKvq74i3rMWaP6RWK+GIdzBQkQudG8ZeTCXxSl3R7OVpTg/Ouw39imDFExGH/sPeJGRIFERjwRt1E1A1QEAR5c8FpVcWLySndPlqPuNAgb0kFGCrAYWbuD8TalXzJ5E0g0h67BaKbRsCvpj7j48LCtmGb1c+FxWsUCsRaw0a1svd5EYhciHnANJoPYDZmYm4e06qGL0ltPeWAU0KDLOFEXW2+EABxi/+5N26UkBeBAd9IggCXEZiV98ysBKLeU0aYhgQetY90MmHQCKgU98TouhRtG9LDNiQQ8cWGAOooRYOGmIx+f7QtWCSBETYsVMIA/3Cbrsi6l/fOPu45VL3nTgn7M4Se0ZYvX33d8SBXoC6B22ci8cZ91c2GVUoYkFj8Nnbjrd9jisDF/b3xg5LUvNvugGS3oU5yQrI78H0lPVvrdNZb2fd8Mjm7q9Jer6VTmNOS0NIZLKdTmNG0sWdfr5skUNOrEtHeLY0yhUKnm/qsJND3bjwE4q2YDPXpwrVqUxPIfsKqbBk3rcENIheI3WC4edXmvnLuZMJKAvffvG+kiowCggImBcxTvAPKz4xN2fgUblfP0EZzNRnxWetORm5jagJ6CgsCm9QREyj0QYoVEiv0WwFho4W+nVzxwoUKVVK4kHAh4ULiN/rXKxA2Kmy0UAWEjf7vNlrkxliWbvo7bVkHRQIJAkUKWHS6mEDREhYJUPYT+AUzYR9AsYxxsgAAAABJRU5ErkJggg==" width="48" height="48"></td>
					 </tr>
					 <tr>
						<td><td>
						<td>Shades</td>
						<td><img class="icon icons8-Sun-Glasses-Filled" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAC8ElEQVRoQ+2Y/ZEOQRDGn4vAZYAIEAEiQASIABEgAkSACBABIri7CJABEVC/t2a2etd89exu3VtXM/9wdz3d/fTT3dO9J7oi5+SK4NAAcmxMDkYGIztFYE1qPZT0UtJtST8lvZX0zukn959IuiHpXNJrSZ+dOg7ivUBw+lnC4AdJTxscOZX0NQRhKU4wnjfomIn0ALkXnEARRokgvyO68Xc1R94HJqwO7jwIOu5L+uYB4wVCJM9CKnyRRHrFQ4rgIOdRIUW48ynIwR4sxoPzd0Oq3pH0uxWMF0hMqT8BzNJQ/PtFJm3w60e4+9GwEv2NtXItsF1jdsLpAWJTKhdxGAMMDuSiibPIwGBKhrtvvCnWCqSUUq3se+TcKdYKhJwmt3Mp5XGyRdadYi1AbHGWirjFQY+MtVvtYjUgpBTFyb9d/d3jeUKW1k5L5sEtdrEakJhSv0IXam6HKwHE6wQQENUuVgPC+MHocJkHMPjBwZdkMGtALhOAy3YOCF2D3KTgbERcyjcUhglSjLbMRMH/ZycFhMeo+UXd0FmPKh7UF/bCEogd5jyKrexyfkrpsXNZr53ZpG2B2BGkV3m8dzNFf/jjlnam98UCAeHjtQjC/dRAGFWzhwBmizPZsUAYz2ObW2uEYoSV1Pm7Vrm5TxPgoZxtiFsa2NDXqqoDGZaRASQRs1KNbFmLExl7MVKakrfsWkkgFM6takbWBUprbrwdF6e6trLEZGuP9lvdHUL7pQ2vPdNqYYHYRabXgGdnyX0b89hOPogooP9f92gystBM/nt2ljXp/N0+rMtZiweRh9F7ekBgg8maevHWJt8O4qfag6+p6dc70PWCiMECDCstH+ZaDiBgfrbw5fYRBOn3pTRDIXn+qsV6gwx6WB9Ya3OHdELmv621tiHCDk0AGgGF8yghggD11EMDlkOqYS8udPyMDWoXe9nvwTUgLcaPQmYAOQoajBODkcHIThEYqbVTYLvVDka6Q7fTxcHIToHtVvsPHtCSMytSNo8AAAAASUVORK5CYII=" width="50" height="50"></td>
					 </tr>
					 <tr>
						<td><td>
						<td>Plain pair of trousers</td>
						<td><img class="icon icons8-Trousers" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAE0UlEQVRoQ+2a309aZxjHnwOHwhAECxEHKCpWu+pQaXRLXNou2Xqzi+2mN01auvslNtPDtizNuizLFsHF/gUr3bKb3WwXu9qSadM1mXZUmVZpKaAVBx1doSAFe+As70sPBapwaFM8GN4rfrzve57P+zzP+37Pcw4Be6QRlXJMUJfOEEzGkh1H9AEwJP7EEBGGYPzsfE0Kr1qt9Ojz5w9HutbvRzvD7G8EQ7QzBKNE3xkAmgBYxJ8JgcNqO32xEtsqBrGNOS6CAB6DAKg1Gkglk5DY3IQ0TeeurVH9Da1aH7QaO/FvG34v+O90QOjeq7k+DAA0KhQglkggHAo9sTsDDmrScubFgow7poGAo+xFDppMEItEIbgReAqks/0ujBx/G3e9NvMrLLubnwLRtxlArlTAisv1xG4GZii75VgdhMsK2MYd51+Sy0b7zGbl3OXLuSFyhQI6unvANTcLpuFhIOnfIB3/pWBKoewdoMm3wDU7C6ahYfDddEMsGs31GTpyBJYXFiAeiX5O2S3nudiTy7dKOqO++SCJeDwXTvvEEkgk4uBZugHIIMgkgKHXC6YnSD2AQApoAbp6D4FUKoOtVBL3EZIkSGWy3QEpyFoCwLO4hA3qONhTcn18K268AF19vXi7grwtZ1c8gq19bEg4GMKhgpJfrsQ76o4tFong5EahqG7RFMDsDkgexNptD+gM7aDR6zhFa2g9AIFVP7QZuwpgqg8yaFbe/y8MyKDEZhx0bdwhWFI0ds17G9BGodHpoUmlgmVXFZNdQArPZdJpATIIHYganQ4n6rM0tGEgoPDd7IG4TyKBrYfJ6uxaIomEMvZ0S6UNMhCKsEJ57pZ+RGPP+m55IJVIVAeEPUee2/ptJqh+jpjNpbemZ6Ssg1S6cPknO5exXrcbd+vsKX1IsnPx0iPswYeM5HJQon51EC7hkd+nktAK+FchtLGxgMZrtNp+Xbuh7OV46REE8k/gzp8EEGSLTn+4pkECa6szyA26NsPRmgVBYRKLRi8gkKb9qtEDSLaXabwMrRvz8/Rm9MGXyPYGReOnhwYGyuoZXoIsOp2Rh7E49ghXWcNLkL+u/EHTzKMTCIQkRD8efmOkNj2CixNM5k2cFoTgd3wvX4s5sidA0A3TktMJtDDTgUMrLfCZXhsGsVhS0ie8yxFWZ1E2C66R2CgHw0Vv1UHKJV/x/1y1FipKr968FRqbONWC5pi0fhc0dB/QoHv8Uo13HmEF44dfnRxAhn/zyQ/zXIQjL0GQzrLaslV1m9VxRdtqGCmnt3gH4l1xw71Q6GfKbnkPg4w7fmrW6941GI21FVrFK4tyS6ZUfPZKf39tgSxdvx5PPIhNso8HEIi0UT7WOzhYspLHu9Byzc3FU4nkOcp+eiobWpfOiqWSL0xDQ7UFwsoTyv7+dBbk22Nc9BbvPLInQNBDHOfVq1j51rRHinUWu01x0Vu8Cq06CN8qjcU6iw0tLnqLV6HFFubGvz71ev4xPvnx99fKFep4B5IvGFmYCcoxXa5QV1UQkVj0UfPL2h3vWf8NBiGVSl2w2ixn8z0yQTmmpLKG0f0q9Y56C43dSqZe/KM39JqTUCj4gCAEJUs7NE1PFb+qhMaSJFkAtx3RdmPL3QBW/JpTuQl36///Af0T8WC9Av6IAAAAAElFTkSuQmCC" width="50" height="50"></td>
					 </tr>
					</table>
					
					
					
					
				</p>
				<p><a href="#contact" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
				</p>		
            </div>
        </div>
		
    </section>

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
					<p><a href="mailto:weather-advisor@gmail.com">weather-advisor@gmail.com</a>
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

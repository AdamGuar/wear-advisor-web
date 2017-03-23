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
						<td><img class="icon icons8-Palm-Tree" src="data:image/png;base64,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" width="48" height="48"></td>
						<td>It is HOT outside better take this:</td>
					 </tr>
					<tr>
						<td><td>
						<td>T-shirt</td>
						<td><img class="icon icons8-T-Shirt" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACv0lEQVRoQ+1W30tTYRh+3pyb1U4dMzSLZFIXUYQL+nEVTnSurlRog67c6A8Iobqt64TqHwjnXblIu6ncLCdBEHVxJLwIkpmBpqQdObPanL4xwyB152xnZ8To+26/933e93ne93v4CGV+qMz7hyDwrycoJlD2Exj0jMorjtVuMAcHJz44llKphwyK/8jQeFztUbMEPfJdeaeNmwjskavsgc7jx9IgClemKvq74i3rMWaP6RWK+GIdzBQkQudG8ZeTCXxSl3R7OVpTg/Ouw39imDFExGH/sPeJGRIFERjwRt1E1A1QEAR5c8FpVcWLySndPlqPuNAgb0kFGCrAYWbuD8TalXzJ5E0g0h67BaKbRsCvpj7j48LCtmGb1c+FxWsUCsRaw0a1svd5EYhciHnANJoPYDZmYm4e06qGL0ltPeWAU0KDLOFEXW2+EABxi/+5N26UkBeBAd9IggCXEZiV98ysBKLeU0aYhgQetY90MmHQCKgU98TouhRtG9LDNiQQ8cWGAOooRYOGmIx+f7QtWCSBETYsVMIA/3Cbrsi6l/fOPu45VL3nTgn7M4Se0ZYvX33d8SBXoC6B22ci8cZ91c2GVUoYkFj8Nnbjrd9jisDF/b3xg5LUvNvugGS3oU5yQrI78H0lPVvrdNZb2fd8Mjm7q9Jer6VTmNOS0NIZLKdTmNG0sWdfr5skUNOrEtHeLY0yhUKnm/qsJND3bjwE4q2YDPXpwrVqUxPIfsKqbBk3rcENIheI3WC4edXmvnLuZMJKAvffvG+kiowCggImBcxTvAPKz4xN2fgUblfP0EZzNRnxWetORm5jagJ6CgsCm9QREyj0QYoVEiv0WwFho4W+nVzxwoUKVVK4kHAh4ULiN/rXKxA2Kmy0UAWEjf7vNlrkxliWbvo7bVkHRQIJAkUKWHS6mEDREhYJUPYT+AUzYR9AsYxxsgAAAABJRU5ErkJggg==" width="48" height="48"></td>
					 </tr>
					 <tr>
						<td><td>
						<td>Shorts</td>
						<td><img class="icon icons8-Shorts" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEjUlEQVRoQ+2ZS2wbVRSG//E8PH7hPJwUAk1alaqli6oU8VAVUgexQY2QzSZKu0AiFagSQikLBIuCeAgkFjwkpArUSGVRVdlgC6W7qnWCVVEVlYJQn6C2QQmJSZq48Wtmrj1oJrGxPZ7xOHbcWPJd3rn33PPd/5xzj2UKDT6oBvcfTYAHrWBTgQ2rwO5je+Vi57r3duempi5PaXxfuHsvN9fe01YRW+f2TvAuXt0zd3MOQkwo2P/7x5dLRotuCDUBVhU48iyDQ3sY/HiN4PNJoqvKhlXgt7dsqtMz9zN46WRhWOTTbFiAd/oYvPwEg1NXCI5fbEAFzGbyhlXggQD0jnp7SZT8ZHR4YjGhfs4vrfnr52/Pa7Z7tno0c9lybG+1G7Iybub58HAoXLyoZBnt+67/hBiThvUspkkawrIAygJs3vP/27AWgL+vTEHOALybh8Vi0YXgnOzo5OvnD5sC6D3u/ZMkyTY9a0SQICYkMDyDrl1dJZeZVWDm6gxIioBzcGA4RheAsTF/hY+EHjcH8I13iYjErWdNiAtIi2k4PA60d7dXBbAwtYD4fBw0R8PqsOoDcEw0/GaoxRTAc1/0atqI7EZZlpGMJgCZQufOTeDtpQ81q0AqISByfQ6gZNjcdlCUfn/589thzUfNxL4T+3oy9y139K5CSkqQUsbho+w1C6Csnf5jWlWU5VmwNlZXBctDmS0XDl+4m79AA+AdfXEkFU19WcpKNnmVb209bXC2O3UPqwQgthDDvdVG0OqygmboknZ5N380NHz2K0OAvm9f+EyMi+8WW1Cdj6XU0OFdVnRu32RY9ioBUAxFbs0htSyooWR18iUh7C38sXOvnf2kHEBIjIv782M+LRKISVF13sJQeGz3ZkPnKw0hZT2RCGav/YMMkVUIzsaB5piCnOAc3MTkG+e8ZQGSS8n9MmSkpQzSoqQ6rgzWzqFjmwcMq1/ussYrVSALEbkVUcuqOigZNMeCZi0qiM1tKw/w1KfPRKQk6SigtADODhdaH20te/PVAGT3Lk4vIvbvsvrA5Q/Ozs7+8t7FRwwVePKjp0laStNKXWatDKwuHu6HdZ8E80lMUfBsKf1m6BmJzkYhLKcgCUStUjRLp399/1KB/JoqNPCDLwQKuRwwfeVFC4tDyOq0wtXhWqu5lX0yJsZfCRrnwHoA0CwNd5fbsNcxRVZvAMVx5WFSOk2jRs2U86YVCPgWAWh6DtOHrONCGbhzxh/capjEAwGfbh+0jr6ZNj3uDxbkrTaJawkgY2KlnldfFLKEdQWQge9X/Merpq+4zMK6AgD4cNWfDxoVoH/V8fMNCUAAtWIwwO2GBMjGay0rW9kcOHX1dEEZPX1jLHd5QzsGCy7S8Nv1sdyzr7zuQzsHC9qTtdo9tGvIuIzWDODG2Nfj/uCIQnwg4Dt5cMdgQSVaN4BayS0DR8/4g+rPvwMB3wgFlPyZWmlulA2hWgEA6B/3B0OKgwMBn9JB1qQS1Q2AAVqD/uCSAuAL+FoIoPRYVY+yAFWfUGcDzX8p63zhmuOaCjQVqPIGGj6E/gNbKDBPXLpzCwAAAABJRU5ErkJggg==" width="48" height="48"></td>
					 </tr>
					 <tr>
						<td><td>
						<td>Shades</td>
						<td><img class="icon icons8-Sun-Glasses-Filled" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAC8ElEQVRoQ+2Y/ZEOQRDGn4vAZYAIEAEiQASIABEgAkSACBABIri7CJABEVC/t2a2etd89exu3VtXM/9wdz3d/fTT3dO9J7oi5+SK4NAAcmxMDkYGIztFYE1qPZT0UtJtST8lvZX0zukn959IuiHpXNJrSZ+dOg7ivUBw+lnC4AdJTxscOZX0NQRhKU4wnjfomIn0ALkXnEARRokgvyO68Xc1R94HJqwO7jwIOu5L+uYB4wVCJM9CKnyRRHrFQ4rgIOdRIUW48ynIwR4sxoPzd0Oq3pH0uxWMF0hMqT8BzNJQ/PtFJm3w60e4+9GwEv2NtXItsF1jdsLpAWJTKhdxGAMMDuSiibPIwGBKhrtvvCnWCqSUUq3se+TcKdYKhJwmt3Mp5XGyRdadYi1AbHGWirjFQY+MtVvtYjUgpBTFyb9d/d3jeUKW1k5L5sEtdrEakJhSv0IXam6HKwHE6wQQENUuVgPC+MHocJkHMPjBwZdkMGtALhOAy3YOCF2D3KTgbERcyjcUhglSjLbMRMH/ZycFhMeo+UXd0FmPKh7UF/bCEogd5jyKrexyfkrpsXNZr53ZpG2B2BGkV3m8dzNFf/jjlnam98UCAeHjtQjC/dRAGFWzhwBmizPZsUAYz2ObW2uEYoSV1Pm7Vrm5TxPgoZxtiFsa2NDXqqoDGZaRASQRs1KNbFmLExl7MVKakrfsWkkgFM6takbWBUprbrwdF6e6trLEZGuP9lvdHUL7pQ2vPdNqYYHYRabXgGdnyX0b89hOPogooP9f92gystBM/nt2ljXp/N0+rMtZiweRh9F7ekBgg8maevHWJt8O4qfag6+p6dc70PWCiMECDCstH+ZaDiBgfrbw5fYRBOn3pTRDIXn+qsV6gwx6WB9Ya3OHdELmv621tiHCDk0AGgGF8yghggD11EMDlkOqYS8udPyMDWoXe9nvwTUgLcaPQmYAOQoajBODkcHIThEYqbVTYLvVDka6Q7fTxcHIToHtVvsPHtCSMytSNo8AAAAASUVORK5CYII=" width="50" height="50"></td>
					 </tr>
					 <tr>
						<td><td>
						<td>Sunscreen</td>
						<td><img class="icon icons8-Cream-Tube" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACzElEQVRoQ+2Yv2/TQBTH3zVhQMJ2I9VZCZWYaRECBqSmE0IodiOxkz8AUNmAhbBUbPzcC3tRSDIgplIJCYFALSsDDWtSKY07oEDNQ+emUoT8497dGSUQj/bX7+7zftx7NoMxv9iY7x/+P4Dq1zamGbXqbJ7kVJKYb3wCkBC+SQSS8rvR8VKtAcc2SWlNEnO4NAEQsOfa1nSSE4efywC8AYAFyiIE7YZjm0WCnt4HGh1v7AFeAoBL8ZKoFhGeu3mzIqrnOnIK1Tu9KgN2l7KIqBYB77m2VRXVjxwAAN50bOthqgDNHW8JEWphizgbm0JrNxbmQ3UM2GLJNniNCV/kFGp29ooIuD62ALXu90Jm/+d2GgDUJiZVA3HNTDWF/h5A29sCBqf+jIIiALmJqUQgtJkpAtQd21wSrt6BkFzE/L2oXqACINMDFCLQWwZgD3SmEGNQLs2YvMuTLqkIxB2lpNWHxBmcmr+cP7ZFfV8KoNbF6cz+Xpe6WJxe5gSSTqGDo7TXAmDHtUAgfHby5pyMLakIDHqBtrFaZgo9hJUG0DuV0oc4ZYC4oY6aCjJDnDKAzkKWLWClItZWyAoFrAxQb3vPGIOr1JQZ1iNjj9wZY1nWhnQRBxHY8SqAsCq7eOBByQ6sXAPcgI468LNGrpxju7JOUIpAEIWI0VpwQ1Ij9LBtdYBO+GAnBiB//mtJoYM0iv7ETILws0dOlHNHW0m6uOfKERiMFeSfXSrjg9YUOjR27qIb/LVevFQKbq2/asY69v3ruhbnaTHCdzr2AFdu3AkicOHsmcDzbz98jI3A2uMVLc7TYoTv9J8BOH96DrLZLLz7tAm+70dGYWQjYBkGnJwtQL/fhy/bLej3f4RCjB7A9du7wJglcqYjwrcXT1YKItokjb4auHariGyKT6ex38l88wx/Vdae3if9hY4C0QaQ5Km0nk8A0vKsqN3fBXMmQJU2KSUAAAAASUVORK5CYII=" width="48" height="48"></td>
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

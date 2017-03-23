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
		
					<!-- Moderate -->
					<table>
					<tr>
						<td><img class="icon icons8-Temperature" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACWUlEQVRoQ+2Zv27TUBTGv+NIXWKL8gS0UoawxVKTgQXTsNMyM8AblCegfQIeoe0TEHYc3DWuiNUFD5GaDuyGhiUoPshNghTLSV3fQ9tb2WN8c+73O//u0TVB84c0148SICuC/e/nG6DJRwCN2fsAXHlvP90cSkdcPAIz8X0A6ymxEbhiS0PIA4SDDoBXSzz92a7XdiSjIA7wLRxEBDxaInJo12ub9xqgHw54lUC7XhN1mqixRPiDAzg5PVsIyN6b16JOEzWWFQHtAdL1UNZAyiNlCqVTJN2Fyhq45tT77ymkXRGP2q2Fk/jsx68FhmdhKOo0UWOJ0gcHkE4h0+2JOk3UWFYEtAcoa+C222i6iLVPIe0Byhq4/RpoMpgAYmB+JifNevab6fqirVvMGDuN9VFl7ZCAldcmDHTMyfgdeUEkcTshAjBymg0Y9AmEjVyiGEPEvGt6fpBr/YpFygCJ538ba/3c4udiGMNqPLZVI6EMcNludWj5TdxKByfpZLm9XZUoKAFcvtxyiI2vKgKY4hfWl1OvqA01gO3WPhE+FN08+R8zDqxub7+oDUWApkdEz4tuPgXgE6vrO0VtqAG0mxGBll3k5tLEzJHV9R/nWpyx6O4BwD8t109/S8jNowawrXsKaV/EurfRJFFVDjKAj03Xf5s74aWL+KoNTkeJAIQnNxLCuKjG48adjxJXNxHTYa6TG4JxgZh37sUw9282m47TR9fPRXxcnfzZU/X8fF+lNpqVMsl8hNhwkuQCzT50MwKAPBixpzL3ZO0nDnCjOhBYXAIIOFHJxF/Avx9AHSNN1AAAAABJRU5ErkJggg==" width="48" height="48"></td>
						<td>Temperature is MODERATE better take this:</td>
					 </tr>
					<tr>
						<td><td>
						<td>Shirt</td>
						<td><img class="icon icons8-Shirt" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAD4ElEQVRoQ+2YPWhTURTH/+eZ5FVsJEUH8YO2qBRB0KqNo+2gg+C3OAnWUQeTh4PoYl0UB0nroKMVN2lpVXBxUEdTpZ2EgmIDKih+FGKbJo05cqNP8/Huu++mSZtiO+a+d8753f85/3v7CIv8jxZ5/VgCWGgFlxSwFWi5nWoBZ+/MJBKdU2OvHIUxNzSjccfOYZDPmjizfKIa6lVFgT33poY+TuUOZHNYJopKJRIohRDFB3fszNfsM/BzbaPx8PnJFUfnClExQGyUW2h2NgJw98B4NvQhmSuqpRCiceNGNGzdVrS+LmjgeJtvEqB+9vv7rHaqSBFtgL6R9CFmjgLUaVf0PpnD4Hi2bDN93z6hITONH2tay9aOtfmwPmj8+50xTAb6Ix3mAx1VPAPE4pntxLkhELU4JRgYz6JUhcbMFFLTKfwMrXbafec6mSeYjCNWODDmBcQTwO92yYwCCMmClqogiv/y8XP+8RWhYBFE2e6XB51kf6DVaqdJFYQ3gHi6n4BTqmC2CltWGRh99RYXDzYDDFx7lMCBzs14MpHFn95XhRKv3bXCZrfqQSVAbJRDNJv5rgok1oUKr7/ksK/Vh+sD47h0bFP+tauDb3DheFt+baWJ4t6XB/akghognukm8B0vAIXP3Hj6Fb5gMP9TNpnE+a5VuiHAoNNWONDv9qIa4EV6mAiHdLP3vcwUvRLZFdANAWY8sHabh+cE0BtPs3ZmANUAADAZDZtNFQPkrRMs3Ef7r0oAoo3a3SzVtYViIzNRYoqVVs/MCSJqdqMSAI9PLM8/sv9+CqoWksVUzYE7gMQ+hcWpbFUbQBKTQX1WOBCVbZYCYOYZgfaUKUBsOSlT+JxuC7EkJoOfW+GGv9eW0lpcAWQDzGR0EeeeqlqocF3ZQvKYroNcGYA/0KQ63LQVcIkZDZvSOqULsZHZTtkui4Aqe9UFcIvp5kTaAHZPegG4udcUdxpEnqSVLiQAYnHZzBldVof/mVPLugBILPTPUHkFEEnPzRXA5UohB3iR7iHC5fIzAFes3WaPFwCdIf6tQKaXwBFZTj0FFgJAkVMXwPESJ/za6mjorYkCMgCX/w3kLaQYqBoBHCbCUFkLuRxmNQXQdiGJdbudxjUH0HKhegPQdqFqAkjvQf5Ak/haUJMZkJ/+Y9Gw2a7lQrIC7XtJLQBEgaq8nm+jqkD/BYCuC9WdAgJAx4XqDkDXhZYACnes9VbS8XvQu7PB/OFXqyFW5fXsQiJQ4RDaL84nQGF+O682gD2ECwVg568IwOnkm08FCvNrA7h9MqmnNeXX6XoqVusuVO+F2/UtKbDQSv0CBdTET/7wQKoAAAAASUVORK5CYII=" width="48" height="48"></td>
					 </tr>
					 <tr>
						<td><td>
						<td>Sneakers</td>
						<td><img class="icon icons8-Trainers" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAGTUlEQVRoQ+1Ya2xTZRh+TtfLWbt2W+lK2222UhQ3JzARBrTbuk0lujB6QpAFkc0oyiUqkeAPwwii/lKjmEhCYsLFCBoTN2SLP5BsQ8hIMDCI04kCmyCDDti969bLMd8Z7XrWnq4r3YBkJ1lOd773vO/zvNfvOxQe8ot6yPFjmsD9juB0BKYjEOSBrM2Xjaw24Rd1699aiWtIBRY1Xvh2n6xZ3iDkqAcmhXK2/bF6IEN/GBIxpWs6C2l/fwBzZqZ020t2xZmy4qWNY4k8EASyqy79OKhR2wl4cV8/DKfP8nAuzaNdeYto2l5sCcF7XwnM2/qX1ZmmPOpRKVP8iNW/X0RSxw0egeWlCsyeJcEDQ4AAdyuluwa1mqJgpNKuHuh+O88Dr1KJ8FqFCj293ksV9oLZk5pCpq/65xMDbZuTmsndtKePFB/btklZNM+61erKsXyEjAVzhtVqXQgQjwf6prMQu1y8pcJ8Gk/Pp9HT6ztUYc9/eVIJPLqnt5v1+USqH6q2w+vO6VvzyXpikN630uP19ordrx8T7Lqa5hbIO2+H9T55yFIUwxQtrYk7gQKmtqKrs7rKM+zIdFUekhIDkq+f4+y411Vzd8lBZuR/AQLh8p7Iry1XIi0tgXuXpeSpTFFu9z0T0M+qaqMoykgUqbUZmKFLx60bB+Eeaoe79LMRwHVbubtPbebusgEPaPnjuLPyvZAIyK/fgKblYsjzxYtoLMmjR8ADR5hiiz1c+CbchfSzdnxBUXiHKDNnL4BILA4Q8BsQS7SQ0ibIZEbQiicCdv+zLoI3cQQUuYTAm80SlL2oCMixLF5lSiz740JAZ9ppEom8zaCo5Mfm5nE6/REgv8WSmUgzvBHOFhzznoRLOyMieJIyqxgFZDLRiPdZtDMlFlNYhUBs22mduapSBGpfujkLcoUqJAJ6Y1VYe74EMXqN6aC7ukF39YTIjAV/l4Cg98n6hFPIb9Vg3m7PMOccTlQo6ZvXvoTPOwpIiICQF8nzsOCBRqbYYov0XswEiNICpq6BAgo72j/k2dDo1kMiC2n1gjgyMkjOJwbSxi/IUshliizcTIlrCvmVFTJ1rM87iJvXPuXpV2tfgSxRMG15stlZUix7Vh6CL1LhBgvHHIF8e12liMK+ocE23HF8wwOQqlnF6z5C3ltWIkd2Njc6eBfL4gOmxLIzkuf9azERsNnrU1g4z4GCqa+7Ef09J3i2kpILoEwpFLRPOgzpNP4hFSzIgj3AFFsrowEfcxEX2uuqQYEbLF23jsA1cCFqAgQ06fFkkxbi+QmCFySQb6/dIgJFhhUp0t0NNaVcIVntR20JEH0OCtymjVyd1/fC43bwsNCKuUjVrAgBSPLdlk+HFCsRnKjnI6ZQob22CxQV2KNHCufYDkRkJTIjNLp1vNdsVhq5uaNT+F7SJvjdsDVAuks0ORiugMcSCM53t8cDiVjML9gY0iZuBMIVsF85GWb+4eQaHsTJ5hZIxAl4fsmCgP1Y02ZcAgX22v1upbLCeXffIjT67zi+x9Bg6E6SGChd8THIYaSnb4ADT7yvSVHBmpvD2Y8HeMEittl/NnUsfOrKcGpygCzl9iDRcYvbw5A/cnIKl/+JiXIsLyvDMwsX8sAnJ8k58CSF4gVekABZmLOr/Z9hzd0NfZiCkNy+CVSv5a0Q8G9u2AhDumFKwEckQA7evWbDr0LFTLecgLdpdA90P8BHJDBeFGQ/vQ+f4wzHjwO/cRMMBv2UeT7iHPAvCkUhwemE6NDIoCLgN2x8C3qDdsrBjxsBIpC143KDS5fG29hI2/8Ee+xtHniny4X6Mxe4bjNZBRsuncfdzJEPrm6jvNWbpAiMUVnjXuicTSgvr4ROr+b0tl65ita2q1MKPqoIECHy4dWZofuOlUg4sPNPv4vV5WtA06NbYeL5fzsceESvHWmVLHYzJZYtQk0gXs/HjYDfEImEdCa+fcHYmbs40xN6AglCFO1hJB4koibgN1Z9/FTgs8pYACyLHoioynBf0OIBNqYaGPtSdf25FPiczRQF7uOW/2LBngdFwEc+w8abyIQjQABU1zfZKNZXHwT+ACjFlnCf/uINeKy+mAhwJI6f+gJA5VSnTNwITLZno9UfcwSiNTDZctMEJtvD4+mfjsB4Hprs9f8BDHtWT774ufMAAAAASUVORK5CYII=" width="48" height="48"></td>
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

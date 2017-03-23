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
                            <br>${cond.temperature} �C</p>
						<p class="intro-text">Wind:
                            <br>${cond.windSpeed} km/h</p>
						<p class="intro-text">Real temperature:
                            <br>${cond.windChill} �C</p>
							
							
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
					<!--Freezing <table> -->
					<table>
					<tr>
						<td><img class="icon icons8-Icy" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAADsElEQVRoQ+1YPWgUQRSel59Tk714aCQRBKMGRQwmAVvJgY2d0UAMoiSggqRJLK20tNtLZeUPdjbmFAmKRRQFuT0xQdOoxJ9OK7W73TNZmbud3HOcnZ/bW+PhpTPOzPu+9773vbcBUuc/UOf4SYPAelewUYF/tgLLfcRfb3A4/p4lcb+GSqhBoMbl+/8qYOeLaeKvZoGQzTiZMy89YW6nDiVCcx52h14Q3ePPH+xsHrs32nZHFEBqo3bOvQJALq8ngZ4OWJw/bQ2GZUdOYMFPQdH7piJwoBOuHtnV8hV8sEWBolRAln0aSznIbKfwBAgMMWA8mG1t5IczkUzR/7dzhU8AsJMnEUZg79am7NHdiRlequx8osknby90SDGqCXAy4sHs39J0fW6s/VyJgONlgPhTOgRSG6CwcNbaVCb+u1RZjO52+PJi3NouMzQ1gXwxDf7qfFgFBrusnrsj8LkEhDsbdof+nmb/0cn246V7nFQZgd4UPH18ykpHIxDyOH0UZ5EFyTjuHxNcJCFe23bOzQKQY/Qddr6/q/lidqQtE4kAr20MRuQQfM9gQAyISNtYRizGQPfGw7MnWp9HJ4AaGRPA+mdBRH0ga/y1e0h+7PzHyaRS4soDfHNiMKIS2443AcS/KbPeMG0z+dEY2N2iVwC5BCYgypDteANA/AUZgTBt2zl3EYD00xg7kmT52Zlkrwy81hzg3YURsFrJypvzyRZRAL6ReQmFadt23FtAyDg9j10qegUE+pSVmGVSZKOy4cTkRwnoOJB2BehBrE/6b5lHY0vkXUhKPLDsa69c5QRmydFqYhEBkQOtOYpkequWM+pi9995Q7IFDktKmwBuMPqArMS8E+Ee0JmuqsatjkAwCxgYvELwAfmVQmW9JoD5s/oVCBY1CkZnS8ROhAnoTFcTQvoEAl3rDhnbcb+zrznV7DABXH0Fcu4wAJmlYFSNWJ7ele8IRkB3upoQ0q9AMGEpGJkDVXai8lDCNqqz35uAN5oDzEopAR0di7bLWjuQMQFqpTdee31hKwTOHnYiJiH67fxg1LpkmuXIq8SaLPKF6bn3P4dVX0nlHqgsdSYfKKbktHvA9GHR9NbZ703jxEoAT2/Z9moKuqpJXE0QttRRCcXhQMZNbEqCORElEIcDxU8g+I6gBOJwoPgJBPs9JSBb/kwr+9d6oGSnOXfx9lJxH/srXBSworuxulCJQL4w/fDDyhD7K1zdEag1YP692CvQIKDIQKMCcUtE9X7dV+AXjnJET6Y3rbwAAAAASUVORK5CYII=" width="48" height="48"></td>
						<td>It is FREEZING outside better take this:</td>
					 </tr>
					<tr>
						<td><td>
						<td>Warm hat</td>
						<td><img class="icon icons8-Beanie" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAACpUlEQVRoQ+2Yv2/TQBTHv48UkDq0RUwMbZIFiQmbHTXdGBoJpHRoF5KxXYC/APgLgIWMCQsZylDJHbrVETvOhtQlDh2YkNwOlYCWhxyLlojYd7ZfElzlNst3z9/P+3XnI2R8UMb1Ywow6QhOIzA0AvVWCcBzMBv990QdAC+xuW5LR0w+AvXWi7744cOH8N+LDVmAwPP7CnUrkpGQBXj73gbRciQAcxtbGz6oyJAFqLc8APMKAA9bGzdE1PvlJWWob0cHADjC5vqC1HdlAS5BCmW8iIM0ym4bfeB8LczQ98a34+PSweEhjk5O+qk+PzuL24uLuDk3Z5/y9dqeecv972qg7Hypgn69AkhRoOyBrzyzzKWmBIRIEZedXhOExzEFNS0jX4u55p/pqQAeOt2FU6J9AgVnnpiDwZ0Z5pUds+jvH4lGYoC04v+oTQuRCEBKvAREIoBVx+0Q0d1EMQ9Z5Edi1yiYcW3GBkhYsLq6Yhd2LICgVXJDV02ieUyPLHNpR3etNoCf92dEXXWf1/102Dz2csxF3c6kDTDi1BmkYbyzzHxVxxVaAP4R4Sr96OoYlJrzk68VdY4cWgBj9f5Fb9WKgiaA64Eo+k9LyvXndtizjILyz00JMJbOE1rP6o6kBFh1eq+J8ETcwRoGmfFm18w/jZqqBCg7rvqmQUNMoinMbcssRN5g6ABMIP/PK1lZB2qATo8TeU9okWXkIzVeYoDtjyXQWQOgQt+Znz8N+vTOvcHnkb1nF5yrYe3+0Ivh8Ah8sP1zTyB+ogD+x9lFpVQclpURAO3B3B+ZhzUdVFkeqnUKMLYUm0YgczWwbQ/uwBMF4B4qpYuO+Fc7Ci/iYB9oApSfbBvlHjhXjb8PCB0FRm1GeZQYtYC09qcAaT2Ydn3mI/AbYZI5QHr0myAAAAAASUVORK5CYII=" width="48" height="48"></td>
					<tr>
						<td><td>
						<td>Warm coat</td>
						<td><img class="icon icons8-Coat" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAFNUlEQVRoQ+2YX0xbVRzHf4d2UigZzKAsBraWP1vCZKNIRGVmtw/LiK2OLcFkagJkb6aE8WRiYuwSffBpLG18UyBRl0iyP641hJhwF4eKm8CYm9mg0AVmQInSpeXP1u6Yc8ut917Oube3tHGYnvB0zrm/8/2c35/zKwi2+EBbXD9kAZQefPc1rtaAoBUDcAihWrKOMR5HAHwMQ9+n3/Lj6fR6Wj3Q84m7efyH4b7Hseh2msgcg/FB7SuNre3vuS+mCyJtAD1n3EVoDc9M3fr1Xujvvw7QBBbuePpG5b7nd+NcZG3vci+lAyJtAJ9/9P6gwbjtcHBmeuTG2ERDeGUNVh8+EjSantoGBXm5cMC2f8RiLW+IPooOnvzg4yNPBEBn06v7TUVFl6tr63YRQaPXR2Hs5m2qNltNNdTV1wlrE9d+DkYj4aNnB76f2AxIyh441cRZogZ8FgC9sauiAkqeKxV0zM7OweB3PFXTkcMclJau75sOwPz9OZLi3xhjqLN7gA+mAqIbgAiPGeBDAGiLF2EENfUvQq7JlDj/s54vqFpOtr+TmI+Ew/Db+CgBEP4AoNcQg9N6QXQBuJxcNwLUKVWXZzbDPtsLMsFfneuHldU12VyeKRfeOtEim5u4NgIP1+T7AONuj5/vStYbSQO4HFwvQqhVabisvDwRPuKa3zcA838uyrbufKYYHM4m2dzsdAAWfr+/USvGvR4/354MRFIArte5ZoTRBZpBZfiQPVf4KzA1MyvbXmktg0PcIdncv2FEYUD4mPcyr/leJAfgsAcRgt1qN2IwGqDMWgHFJTshMDkF/NWfZNu5gy9BRVUlLC7Mw+xMAGLRmPoFYxz0+Hmrlhc0AdRuXzRO8sBStRfMBQXC1HJkGc59fV529ok3j0O+OV+YIzcfnLwDK5GIqj6chBe0ARixL55c/GwJlJZXgNFolInp6f0SHuN4eclBCNrb3patR6NRmJsOwOIfC0wIjHGf18+3qVEmAWBfQggKWUYsVXuEsFGO/v4L8CAcv+HtBWZoaTm2YQ8Jp+DkXRV9eMnj43ekDOBychwCNKQ0gDGEpFDVtjrIN8fDRxzSRKYl8HIkDLfHyDsQH0qbiXnAdq+Pp7+MwiukMjoc3ClA6MyGLRhfAoSOivMkgWvqG2RhJG0ppC0E+YaEz83rI/JEVtiUkHV5/Hw3S6YWwEWpUKlRJZjyQZO2FNIWgti4NfbLxgTGuIt1WR4/35wSgItRPjFgOy20SEJb9uxNnCW2FNIWInj3DjVxWTbJjyGvn7elBNDhtMfLiGJ4fEOItSZNatJSkCG2EGpJq2aTrOkGEH4a5qAx5YcYwz2vf8jCAiD7xaQmLQUZpIVQJi3tUlwOesUzRLGV1eQxyVgViHQKHt8QpwYgJvXw1WFBZ+PBxo1JS/cqqTbyfkPoV9mViAnAqkDi46IGQLSRpDYVxJ+P1XBI89UVQsjBMYsGqxKpecCNAJG+XzYw4NNeH+/WAiAfmQvjAJFQiBXCiXkC4HJyqmfSjGQUQFO1ZEPaATqcdno8rjdYNA+c/zGe88dfplc9tXUBgNW2Y3yJ9Rawc4AFsJ5QGQFgtC5i4dAVQkwPqADoCRlqGc0CSK6F1UaIj0oyVUiPR0gOsB9PdjuhlgPMNoIIywSAml1WO5FWgM1WoSyANGbVOtH/bQjpSVpaGf3PQ+iJAtASk6kqpHWucl3z3yosg5loJfSKJ/uzAKncGu0btd+9amek1QObgckC6L29LV+F9AJnan/KOZApQXrtbnmAfwBLMNZPl2/zDgAAAABJRU5ErkJggg==" width="48" height="48">></td>
					 </tr>
					 <tr>
						<td><td>
						<td>Warm boots</td>
						<td><img class="icon icons8-Winter-Boots" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAE2UlEQVRoQ+2Y208cZRjGn29nlz3AluWwsJRwkFJsiRRa0dgLLU2r5cZIYsE0relyo94JiTGsielijdREI/4HNkoaAWNrWgPVRpqqYEALkUBpQws9xLilMGxnDwPLfGbGbF1gZ/Y0UIg7F5vJ7Hv6fc/7HWYINvlFNnn9SAI8bgWTCmxYBcYH+52UkLcBnCaUsmrcl1c/16Q2sGwLjQ8NUDGZ+BM0SuyeTpdX7y1eN4CxoYF2AogKqHNR2rrzmb1OdYL9F0VegcF+Jwg5oVZCCnz+2FsoERiKZAuFHb//VwttxlXIPvJzX7rOYEBpRRXGBwcQ673RvGWmrHKPDpS2r+sqFGw4R32ttB8kcF1u6+qpScBf0TXiWSgWgPIdBAdqtDDoCS70LmLsmsS+eQDebUrBlZEnwfn0SDN4cX1iHosL/KitqPTlRodzai1UUFWBIMCc2/So1mD/EQruuKPVrDaEqgBSC+3TghI9Ll1JwQxrgsVqA8MwoFTw2B0n0zY0QGhxGoZBYdlOGEypWAoEJkmqrrqx2clueABRhRee1+OPie1we0zwez24M3n9vQ87vmtTu3gxnqotJAYU58H3/bsQCDDSYZyChCShoJRwdhXnwhoCaFYVL44XpQJvd5w0qKWGIsCnTW80bcnI/Mx1dxocOxdVzuBENhoJzvf8uxdoU/QoLq8IaBlGK1Cyv9Hh7IsqWBRGigDtzW+1ZeTmtohxZl1/wXXndhQhV5vkb9sOsyUTfp9n9M3WTyriCiLjpAjQcrjWacm2nsgpKMT8g/sxA4hq7N5jwdBEGQhdwgOXC+nZ1iGG0ZYCmLK3tO5OFEYRwFF/6CpAqoJJsvPykZFjg+vubQko0iVO6PO/VEIQNGFM6cjxlg8exY4US+5/WQBnXY2F1xmWNX5mjg05BUVSrOmJcfg4t2JeEeDCr7skAEsahxsT8/D7vPB7vVjk+T4K2v5xd++5eItXXEYdr75UB43m25XB84pKxDbAQ3YW9yZvKOYON6FXOYifbECGCegwBWEp6DBDhOmPun4YjgZMVgGx/wlB2Jd6UQkP5wbv9UaTIy4bCkwRQWhu++biWaUAsgCO+lpxqdsn52xM24K84hLEssTGQ0KBxlNdPV/EPAciAaRnWSWABZ7HzdGo1I6nfoBSVh/gn3Ce7Qt7jpJX4PChORBiUcq67akq6PR63Br/c63bSVYFpRaK+CopqiDuEbfGRhFY4OMb4Si8KKXnTnX31oUzTQggitzqmFDKtnX3ZqwJgHjmXwoEcO+m8pIaL4lWq5vd8fSzgaPvvJ8bE8CPnV9JLeT3eODzclhaWJRmqtfz0ODjOAPPe70cy5pshcU2vdFkuPb7b/HWuMqPaIg/K2era2tJaaE1v0D6/2DDsbDdIttCQYBYqpq7/7dkPj/jmuV9frffw2k8nFsQn1FBCCz4/WZBWFo2khpG4zemmlljqhmp6RZLli3PkGHNFT/rSzs0AV4BxemDrx2zx6VALACJ2C4rOGTEL3V22A80HI19HwhVQACRTo0a0KvBIsM9C5X5YmdHlZL9Sv+gr5iXgl5+seH1qD6GybfQ118Og5DK0P4LhQpNGIRa2adK9nIF/3TmTPH+I0ei/oYU8ZUykbZYD98kwHqMslKOpAJJBRIcgX8AJSZNT+d6bFIAAAAASUVORK5CYII=" width="48" height="48"></td>
					 </tr>
					 <tr>
						<td><td>
						<td>A scarf</td>
						<td><img class="icon icons8-Scarf" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAFGklEQVRoQ+2Zz28TVxDHP29tx4ltIG1VKFQtdm0iaCKRI2pBGHGo4NCaS9Vbg9RjpVKpp14KZy5t/wGSY9WqpAdaiQuJgDYIqSRSDAgS4qg9FEqKgwOBeHen2rVNfmDvPq8dtUiZSyLtvJn5znzfvHnPihdc1AsePxsA/usKblSgVoELSboXYa/CyAJJkKRAt0L116uSIOMKioIaV9jjwOiRAoVmK9pyBX5JMiCoDxQq16zztfoOKJBTRwsM69oKDODnJDlQZxSqW9dZE3qDRwr2cR39QABkH8nRv7m0aBmv6zhpVidqyOVUl3yayuNQy1OCATjAwK15Prnz0HjXz0Hz3+VWT0J6RBjK5BnwWx8UwKAtHD7/p9oEaoufE/3vcisTl22GwrVpLPBSqkDRa30wAPspoNhZWuLS5bvG/tUOZEJQI2AXFC4FCmu7y/kk/RZ0g5EVJKtQB2F18FWbp9KTnGwrAIf/RJipGV0sc+W3e8wt2XzfCcOHfDJWL5iZPrKmMFzL/DMdoZDOk2ovgAMuL8+sMVrE5oS6zJA+XSqaU70MKPWcvWUMwvFMnsFGdpumkBxwjX3cwGABYRCTITXmfSj9vp2dHZv5tivC+16gBUYykxxqH4Aq/30zLYyjGAFGCDGqRpY341iGEyVLnTZFhQ2ERBi6QkIsBBFjjWVhNp13Tvb60nwFdAE8768oNjdLS7xSMtlVWoIndkWp+NT5vxJ5RAldoWVAYeFY5kbjk7l5APX3gG9Bgig8LnMjPsbbbd3EjjGffRAk1ufWmBZ3wx3sXkm9eoabrkDNyHqCEGFR2byjfl2nUWIFCKelfg2Vk7ONclxdbNw6V/oJXIGakas9DO2I8+FrMTqNtR0kGKIhddF/BqqZDgxgppf+v5bU2WJZuS2uw7BJJWBHDKKRYJEjTBAm68f7lisw3cdnVerw2IK5JcWitZyLTSGbbTF4OQqbOiAS0gI0j0VWh/eBAcwk6bYSnFE4l5nVUrbhQVmxYIIpCgHumWGeSgVYT9ykOyJsDjsHV+XQChvc64wQre4hbd4HAuAEb8e5gKLuHbdm1LRh8lGY+6Z32mMhu7zjYXnX4SKzWvVpoKS1B3SDL1v8caXU8cYTUYQR3uq0eLPLwgH10HKqY2CCS7co8tF7Beu7VoJ31moBmOrjbD3arHIuTFxbCMucGepPhGz2xsvuSNBAfOd8XWC+APzGXdeRMDG7yJe3n0bPbY9Y9CacPDcQYdZ4RL/fTastAFzqJNzLi9fLw7whZK+WIj90GpL2DN7B6jPf6waudQ7oZF8sjt1+xP1/iFzct7ns7d9nNG42eN89MN3LNa+uI8JPmTy5H3eGr/fEzD0enK/F1jbut6MC88YCyTtFtsS2GvmtHXbcL4OGSSp1s/nnQy+7vpvYuXDbuBeKtQObm82xXXzxapTTfsELjGYmcd5N2yq+ABxvztxjwyCKvVXvbvadTnJ9D+eiIY76RiV8ns67k2tbRQuAC6IyRgwrOIjNN+nrnKh2qQc6Ea0HfXw3cb3ApnoZDFmcdLis06Wq54TnxVwnAY10tCtQz8B0n/tq9pVfALVu5acX5HtLAKb6GHEp5S9tb59abdQvruk+HP77/j5gwKHUpPtG1HZpqQIzu0naIXKiyHlV4n8LYGU63S4Vdy86WaXcv8/OjfSk3tQbpDwtVcDLoXsA2uRQ5LyeBoMEvXLNugFoNTDd9RsAdDO1XnobFVivzOra/Rd/qb5A+1ECFwAAAABJRU5ErkJggg==" width="48" height="48"></td>
					 </tr>
					 <tr>
						<td><td>
						<td>Pair of gloves</td>
						<td><img class="icon icons8-Mittens" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAEKklEQVRoQ+2ZzU8TQRTA32urRgkfkZOJtCXGg6K0690UxINRqpDgzQT8C9AbN+DoCfgLxJsJRCuthgPEEhMPmrgYD4gX2mLiCcEDGGmXZ2ZhYdvO7E67UwgJe2jS7puZ93vzvmaKcMwfPOb6Q80B7uo/o36f0U9EUQQIA2CYGY2A0giYAR8m/IaxkNBaN6oxZs0AmOI+LIwhYIe7YrRBiCOpSGjCXbZYoiYA9/TsEx/CWKXKENBigc70zmoXMrJjlQPE9ewkIPTLKlAuRxsGBTrfaRcXZeZQClCt5XkQfqJWmbhQBnBH/xU+hdsrMlaTkWFBnoqGO91klQHE9WwCEB64LVjJeyJfZ0prSTuNUQKg2vqWwiyoU9GwVnMAdb5frmqeTrc6ZSUlOxDXM2lAjPEsNRhshoncmqPndJ2vg/nfm1yZHYKnb7XQuGgCJQDdemYRESO8RWYiQVO5iVU+BFN+sKUZ7n/NcXUkgtGUFhqpKUB8MUuiBRgAe3gQlvLsvQgACN4ktVDPkQOUQtiVdwaghaQWFrYjSlzIaQdEilo7Y4Ktb4rjhA4RoFRZy214rrLvWnvKl43d+90tlSrfATcIy9fN4HZR3vL7ZDQk1FMKoFtf7QA0hndbY8oAYsK/szNq9SqlLuQEYaVLK72KLG8PWk8AcT3XA0ivS7MA29oAUSeD4MUAD2Lo8zf4sfwd8vk8tF27Do+uXjZTqPWIYsEjQGYDEBt5acyCMNC3LtPjzM3Pwt+tLVO0oaEJYrFbMsOgagDmOog7751WYRAIEAWJ02kxQCPEYl1HD8A0YFUM9z4tjXi+PfSJudAS5At5aGtrL3chQcWuegeYMnFd7EJ289khRIFp73mEQcyB8ARQSafJIG7v9TalgVna89h7JFHWMucg+pPUwk2eWgnZc66T5a1sY68D9vZCCKGqEjt1nOUp9iAmpFoJh24VVAH06CtNBcC0qG0WQcxEQtw8L9/MKexGzVs2KLDDC7cu8CCSVjvNadhk2mnl5wETAg1dKoEDgL3n4Y1xO9AA4eOkFpz0FMSlg+N6bgCQnstAsHQ5nlsrqxP2sU5HSoP8mtMll1Qzx1O0W8+OIMKwDISo2LmOdUmhbHzVALtFrrJrRF7FdoQgeJHUQgNOMp4A2MSVpNeKd4KwN6kFEzUFqDS9ykIQUTalhc3/EmoKwCZnN3N++jfn8+EltwWt927uJHOt6DkG7Mqee/Wxu4CFl9sG1Zm/L30pZrlyo/i74P3ZQACC9fXPlrvah2SM4TkG9heZTmcA8KDsVgmwOx9loK+j9ZABFoovtzwBAEBfTMq4UkIyloDpE4BiO53sgJTf2ISOvQtNpYuvXzwFMWWhr8O1iCmtAzD1gd3eTe6n0qoBKAvkH4CHNx3/G7P2Xl0WqtTlFMmfACgyZNXT/Aeb13JPND6isAAAAABJRU5ErkJggg==" width="48" height="48"></td>
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

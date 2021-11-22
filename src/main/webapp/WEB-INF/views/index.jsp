<%@ page pageEncoding="UTF-8" %>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="shortcut icon" href="assets/favicon.ico">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link
			href="https://fonts.googleapis.com/css2?family=Lobster&display=swap"
			rel="stylesheet">
		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
			crossorigin="anonymous">
		<script 
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
			crossorigin="anonymous"></script>
		<link rel="stylesheet" href="css/index.css">
		<title>PokEISTI</title>
	</head>
	
	<body>
		<header>
			<jsp:include page="/WEB-INF/includes/navbar.jsp"/>
		</header>
	
		<section id="page">
			<div id="centerPanel">
	        <p id="mainTitle"><b>Gotta buy them all ! &#127811;</b></p>
	        <section id="slider">
	            <input type="radio" name="slider" id="s1" checked>
	            <input type="radio" name="slider" id="s2">
	            <input type="radio" name="slider" id="s3">
	            <input type="radio" name="slider" id="s4">
	            <input type="radio" name="slider" id="s5">
	            <label for="s1" id="slide1">
	                <div class="addressInLabel"><a href="#">Coffrets</a></div>
	            </label>
	            <label for="s2" id="slide2">
	                <div class="addressInLabel"><a href="#">Cartes</a></div>
	            </label>
	            <label for="s3" id="slide3">
	                <div class="addressInLabel"><a href="#">Figurines</a></div>
	            </label>
	            <label for="s4" id="slide4">
	                <div class="addressInLabel"><a href="#">Promos</a></div>
	            </label>
	            <label for="s5" id="slide5">
	                <div class="addressInLabel"><a href="#">Style</a></div>
	            </label>
	        </section>
	    </div>
		</section>
		
		<footer id="footerinner">
			<jsp:include page="/WEB-INF/includes/footer.jsp"/>
		</footer>
	</body>
</html>

<%@ page pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<jsp:include page="/WEB-INF/includes/navbar.jsp" />
	</header>
	<div id="page">
		<div class="sideBlock1">
			<div id="mySidepanel" class="myownsidepanel">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
				<div class="Filtres">
					<h2>Filtres :</h2>
					<div class="filtreSubItem">
						<div class="nomitem">Stocks</div>
						<label onlick="changeVisibility()" class="switch"> <input
							id="stocksCheckbox" onclick='changeVisibility()' type="checkbox">
							<span class="btnSlide round"></span>
						</label>
					</div>
				</div>

			</div>
		</div>
		<div class='fondsidepanel'>
			<button class="openbtn" onclick="openNav()">☰</button>
		</div>
		<div id="centerPanel">
			<c:forEach var="product" varStatus="loop" items="${productList}">
				<c:if test="${loop.index%3 == 0}">
					<section class="products">
				</c:if>
				<div class="product-card">
					<a href="product?id=${product.id}">
						<div class="product-image">
							<img src="${ product.picture }">
						</div>
						<div class="product-info">
							<p>${product.name}</p>
							<p>${product.price}</p>
							<p class="stock">Stock : ${product.stock}</p>
						</div>
					</a>
				</div>
				<c:if test="${((loop.index+1)%3 == 0) && (loop.index != 0)}">
					</section>
				</c:if>
			</c:forEach>
		</div>
	</div>
	<script src="js/listeproduits.js"></script>
	<footer id="footerinner">
		<jsp:include page="/WEB-INF/includes/footer.jsp" />
	</footer>
</body>
</html>
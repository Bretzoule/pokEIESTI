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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="css/index.css">
<title>PokEISTI</title>
</head>

<body>
	<header>
		<jsp:include page="/WEB-INF/includes/navbar.jsp" />
	</header>
	<div id="products">
	<c:choose>
		<c:when test="${ category == null }"><h1 class="text-center fw-bold pt-5">Nos <span class="text-primary">produits</span></h1></c:when>
		<c:when test="${ category != null }"><h1 class="text-center fw-bold pt-5">Nos <span class="text-primary">${category}s</span></h1></c:when>
	</c:choose>
	<hr class="my-5 w-25 d-block mx-auto" />
		<div class="container pt-3">
			<c:forEach var="product" varStatus="loop" items="${productList}">
				<c:if test="${loop.index%3 == 0}">
					<section class="row justify-content-center gx-5">
				</c:if>
				<div class="col-md-4 text-center">
						<div>
							<img class="img-fluid" src="${ product.picture }">
						</div>
						<div class="product-info">
							<h4 class="mt-3">${product.name}</h4>
							<h6 class="text-secondary fst-italic">Restants : ${product.stock}</h6>
						</div>
						<a class="btn btn-lg btn-primary my-3" href="product?id=${product.id}"><i class="bi bi-cart2"></i> ${product.price} €</a>
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

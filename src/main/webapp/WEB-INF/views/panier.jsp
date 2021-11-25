<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="css/login.css">
<title>Votre panier</title>
</head>
<body class="text-center">
	<header>
		<jsp:include page="/WEB-INF/includes/navbar.jsp" />
	</header>
	<div class="container my-5">
		<div class="row d-flex justify-content-md-center">
			<h1 class='py-5'>Mon panier</h1>


			<table class="table">
				<thead>
					<tr>
						<th scope="col">Nom</th>
						<th scope="col">Quantité</th>
						<th scope="col">Prix unitaire</th>
						<th scope="col">Prix total</th>
						<th scope="col">Supprimer</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="entities" items="${elementPanier}">
						<tr>
							<td scope="row"><c:out value="${entities.product.name}" /></td>
							<td><c:out value="${entities.quantity}" /></td>
							<td><c:out value="${entities.product.price}" /></td>
							<td><c:out
									value="${entities.product.price*entities.quantity}" /></td>
							<td>
								<form action="testPanier" method='post'>
									<input type="number" class="d-none"
										value=${ entities.product.id } name="productid" /> <input
										type="number" class="d-none" value="1" name="quantite" /> <input
										type="text" class="d-none" value="delete" name="action" /> <a
										href="javascript:{}"
										onclick="document.querySelector('form').submit();"
										type="button" class='btn btn-danger'><i
										class="bi bi-trash-fill"></i> Supprimer</a>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<h2>
			Prix total de la commande :
			<fmt:formatNumber type="number" maxFractionDigits="2"
				value="${prixtotal}" />
			€
		</h2>
		<form action="confirmOrder" method="post">
			<input type="string" class="d-none" value=${ sessionScope.idUser }
				name="idUser" /> <input type="number" class="d-none"
				value=${ prixtotal } name="prixtotal" />

			<div class="d-flex justify-content-center align-items-center pt-4">
				<a class="me-3 btn btn-lg btn-outline-primary" href="products"><i
					class="bi bi-arrow-left"></i> Continuer mes achats</a> <input
					type="submit" class="text-white btn btn-primary btn-lg"
					value="Confirmer la commande" />
			</div>
		</form>
	</div>
</body>
</html>

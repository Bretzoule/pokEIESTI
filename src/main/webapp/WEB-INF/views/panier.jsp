<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">
	<link rel="stylesheet" href="css/login.css">
	<title>Votre panier</title>
</head>
<body class="text-center">
	<header>
		<jsp:include page="/WEB-INF/includes/navbar.jsp" />
	</header>
	<div class="container my-5">
		<div class="row d-flex justify-content-md-center">
			<h1>Mon panier</h1>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">Nom</th>
						<th scope="col">Quantite</th>
						<th scope="col">Prix unitaire</th>
						<th scope="col">Prix total</th>
						<th scope="col">Supprimer</th>
					</tr>
				</thead>
				<c:forEach var="entry" items="${sessionScope.panier}">
					<tr>
						<td scope="row"><c:out value="${entry.key}"/></td>
						<td><c:out value="${entry.value}"/></td>
						<td></td>
						<td></td>
						<td>X</td>
					</tr>
				</c:forEach>	
			</table>
		</div>
	</div>
</body>
</html>
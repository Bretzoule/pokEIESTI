<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajouter un produit</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/css/login.css"/>">
</head>
<body>
	<div class="container">
		<div class="row justify-content-md-center text-center">
			<div class="col-md-6">
				<form:form action="${product.id}/edit" method="post"
					modelAttribute="product" enctype='multipart/form-data'>
					<img style="width: 200px; margin-right: 20px;" class="m-5"
						id="logoTopDroit"
						src="<c:url value="/assets/PokEISTIWithText.png"/>" alt="logo">
					<h1>Editer un produit</h1>
					<div class="form-floating m-2">
						<form:input type="text" class="form-control" id="floatingInput"
							path="name" />
						<form:errors path="name" />
						<label for="floatingInput">Nom du produit</label>
					</div>
					<div class="form-floating m-2">
						<form:input type="text" class="form-control" id="floatingInput"
							path="description" />
						<form:errors path="description" />
						<label for="floatingInput">Description du produit</label>
					</div>
					<div class="form-floating m-2">
						<form:input type="number" class="form-control" id="floatingInput"
							path="price" step=".01" />
						<form:errors path="price" />
						<label for="floatingInput">Prix</label>
					</div>
					<div class="form-floating m-2">
						<form:input type="number" class="form-control" id="floatingInput"
							path="stock" />
						<form:errors path="stock" />
						<label for="floatingInput">Stock</label>
					</div>
					<form:select class="form-select m-2" path="type">
						<option value="" label="*** Séléctionner Catégorie ***" />
						<form:options items="${type}" />
					</form:select>
					<form:errors path="type" />

					<div class="form-floating m-2">
						<form:input type="text" class="form-control" id="floatingInput"
							path="picture" readonly="true" />
						<form:errors path="picture" />
						<label for="floatingInput">Chemin de l'image</label>
					</div>

					<div class="col-md-4">
						<img src="<c:url value="/${product.picture}"/>" class="img-fluid">
					</div>
					<div class="mb-3">
						<input name="file" accept="image/jpeg" class="form-control"
							type="file" id="formFile">
					</div>
					<div class="px-2">
						<input class="btn-lg btn-primary form-control text-white w-100"
							value="Ajouter produit" type="submit" />
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PokEISTI</title>
<link rel="shortcut icon" href="assets/favicon.ico">
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
				<form:form action="${user.email}/edit" method="post"
					modelAttribute="user" enctype='multipart/form-data'>
					<img style="width: 200px; margin-right: 20px;" class="m-5"
						id="logoTopDroit"
						src="<c:url value="/assets/PokEISTIWithText.png"/>" alt="logo">
					<h1 class="py-4">Modifier le rôle de : <br>${ user.email }</h1>
					<div class="form-floating m-2 d-none">
						<form:input type="hidden" class="form-control" id="floatingInput"
							path="password"/>
						<form:errors path="password" />
						<label for="floatingInput">Mot de passe</label>
					</div>
					<form:select class="form-select m-2" path="role">
						<form:options items="${role}" />
					</form:select>
					<form:errors path="role" />
					<div class="px-2">
						<input class="btn-lg btn-primary form-control text-white w-100"
							value="Modifier l'utilisateur" type="submit" />
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>

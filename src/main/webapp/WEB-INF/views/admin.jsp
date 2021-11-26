<%@ page pageEncoding="UTF-8"%>
<%@ page session="true"%>
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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="css/index.css">
<title>PokEISTI</title>
</head>

<body>
	<header>
		<jsp:include page="/WEB-INF/includes/navbar.jsp" />
	</header>

	<div id="admin">
		<div class="container">
			<h1 class="text-center py-5">Panel admin</h1>
			<div class="wrapper">
				<div class="row justify-content-evenly text-center">
					<div class="col-md-3">
						<h3 class="py-3">Gestion des produits</h3>
						<p class="text-secondary fst-italic">Liste des produits avec possibilité d'ajouter, modifier, ou supprimer des items, gérer le stock, changer les images, et bien plus encore</p>
						<a href="listProducts" class="btn btn-primary mt-2"><i class="bi bi-bag"></i>
							Aller aux produits</a>
					</div>
					<div class="col-md-1">
						<div class="vr" style="height: 100%;"></div>
					</div>
					<div class="col-md-3">
						<h3 class="py-3">Gestion des utilisateurs</h3>
						<p class="text-secondary fst-italic">Liste des utilisateurs avec possibilité de modifier les rôles des utilisateurs existants, ou d'en supprimer au besoin</p>
						<a href="users" class="btn btn-primary mt-2"><i class="bi bi-person"></i>
							Aller aux utilisateurs</a>
					</div>
					<div class="col-md-1">
						<div class="vr" style="height: 100%;"></div>
					</div>
					<div class="col-md-3">
						<h3 class="py-3">Gestion des commandes</h3>
						<p class="text-secondary fst-italic">Liste des commandes avec possibilité de modifier les rôles des utilisateurs existants, ou d'en supprimer au besoin</p>
						<a href="listOrders" class="btn btn-primary mt-2"><i class="bi bi-basket3"></i> Aller aux commandes</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<footer class="d-flex align-items-center bg-dark">
		<jsp:include page="/WEB-INF/includes/footer.jsp" />
	</footer>
</body>
</html>

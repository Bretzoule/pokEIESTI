<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container d-flex justify-content-between">
		<div>
			<a class="navbar-brand" href="#"><img
				style="width: 130px; margin-right: 20px;" id="logoTopDroit"
				src="./assets/PokEISTIWithText.png" alt="logo"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>

		<div class="collapse navbar-collapse flex-grow-0"
			id="navbarSupportedContent">
			<ul class="navbar-nav me-3 mb-2 mb-lg-0 text-uppercase">
				<li class="nav-item me-3"><a class="nav-link active"
					aria-current="page" href="/pokeisti">Accueil</a></li>
				<li class="nav-item dropdown me-2"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						Boutique </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="products">Tous nos
								produits</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="products?category=1">Nos
								boosters</a></li>
						<li><a class="dropdown-item" href="products?category=0">Nos
								cartes</a></li>
						<li><a class="dropdown-item" href="products?category=3">Nos
								coffrets</a></li>
					</ul> 
					<%-- <c:if test="${sessionScope.userConnecte==false}"> --%>
						<li class="nav-item"><a class="nav-link" href="login">Se
								connecter</a></li>
					<%-- </c:if>  --%><c:if test="${sessionScope.userConnecte}">
						<li class="nav-item"><a class="nav-link" href="panier">Votre
								panier</a></li>
					</c:if> <c:if test="${sessionScope.userConnecte}">
						<li class="nav-item"><a class="nav-link text-danger" href="logout">Se
								deconnecter</a></li>
					</c:if>
				</li>
			</ul>
		</div>
	</div>
</nav>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">

  <div class="container-fluid">
    <a class="navbar-brand" href="#"><img style="width:200px;margin-right:20px;" id="logoTopDroit" src="./assets/PokEISTIWithText.png" alt="logo"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/pokeisti">Accueil</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login">Se connecter</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Nos produits
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="products">Tous nos produits</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="products?category=1">Nos boosters</a></li>
            <li><a class="dropdown-item" href="products?category=0">Nos cartes</a></li>
            <li><a class="dropdown-item" href="products?category=3">Nos coffrets</a></li>
            <li><a class="dropdown-item" href="products?category=2">Nos figurines</a></li>
          </ul>
        </li>
        <c:if test="${sessionScope.userConnecte}">
	        <li class="nav-item">
	          <a class="nav-link" href="panier">Votre panier</a>
	        </li>
        </c:if>
        
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
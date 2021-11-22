<%@ page pageEncoding="UTF-8" %>
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
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="css/index.css">
<title>PokEISTI</title>
</head>

<body>
	<header>
		<jsp:include page="/WEB-INF/includes/navbar.jsp" />
	</header>

	<div id="homepage">
		<section id="heading" class="d-flex align-items-center">
			<div class="container">
				<div class="row align-items-center justify-content-evenly">
					<div class="col-md-5 order-md-2">
						<img src="./assets/PokEISTIWithText.png" class="img-fluid" />
					</div>
					<div class="col-md-7 order-md-1">
						<h2 class="text-uppercase text-primary">
							Trading card game
							</h1>
							<h1>La référence de l'achat de cartes Pokémon</h1>
							<div class="text-center mt-5">
								<a href="#collection"
									class="btn btn-lg btn-outline-primary me-3 px-5">Découvrir</a>
								<a href="#" class="btn btn-lg btn-primary ms-3 px-5"><i
									class="bi bi-cart3"></i> Acheter</a>
							</div>
					</div>
				</div>

			</div>
		</section>

		<section id="collection">
			<div class="container">
				<h1 class="text-center">
					Une <span class="text-primary">collection</span> hors du commun...
				</h1>
				<hr class="w-25 d-block mx-auto my-5">
				<div class="row align-items-center pt-5">
					<div class="col-md-5">
						<p>Sélectionnez vos produits préférés parmi nos nombreuses
							cartes, sans oublier de passer par nos boosters, figurines et
							coffrets. Avec un peu de chances, vous pouvez même tomber sur un
							de nos inédits!</p>
					</div>
					<div class="col-md-7">
						<section id="page">
							<div id="centerPanel">
								<section id="slider">
									<input type="radio" name="slider" id="s1" checked> <input
										type="radio" name="slider" id="s2"> <input
										type="radio" name="slider" id="s3"> <input
										type="radio" name="slider" id="s4"> <input
										type="radio" name="slider" id="s5"> <label for="s1"
										id="slide1">
										<div class="addressInLabel">
											<a href="#">Coffrets</a>
										</div>
									</label> <label for="s2" id="slide2">
										<div class="addressInLabel">
											<a href="#">Cartes</a>
										</div>
									</label> <label for="s3" id="slide3">
										<div class="addressInLabel">
											<a href="#">Figurines</a>
										</div>
									</label> <label for="s4" id="slide4">
										<div class="addressInLabel">
											<a href="#">Promos</a>
										</div>
									</label> <label for="s5" id="slide5">
										<div class="addressInLabel">
											<a href="#">Style</a>
										</div>
									</label>
								</section>
							</div>
						</section>
					</div>
				</div>
			</div>
		</section>


		<section id="reviews">
			<div class="container">
				<h1 class="text-center">
					...pour des clients <span class="text-primary">satisfaits</span>!
				</h1>
				<hr class="w-25 d-block mx-auto my-5">
				<div class="row justify-content-evenly pt-5">
					<div class="col-md-3 review-card text-center py-3">
						<img src="./assets/lagamerde.jpg" class="rounded-circle my-3" />
						<h3>Alexandre Lagamerde</h3>
						<p>M'en branle de Pokémon je voulais juste aller drill au
							skatepark de base wsh</p>
						<p class="stars">
							<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i>
						</p>
					</div>
					<div class="col-md-3 review-card text-center py-3">
						<img src="./assets/aurelien.jpg" class="rounded-circle my-3" />
						<h3>Aurélien Monteillet</h3>
						<p>Je suis entièrement satisfait des boosters achetés sur
							PokEISTI, qui m'ont permis de gagner plus du triple de ce que
							j'avais investi.</p>
						<p class="stars">
							<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i>
						</p>
					</div>
					<div class="col-md-3 review-card text-center py-3">
						<img src="./assets/couillet.jpg" class="rounded-circle my-3" />
						<h3>Couillet</h3>
						<p>J'ai investi dans les cartes pokémon de PokEISTI et je ne
							le regrette pas même si la rentabilité de 380% n'a pas été
							atteinte.</p>
						<p class="stars">
							<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
								class="bi bi-star-fill"></i>
						</p>
					</div>
				</div>
			</div>
		</section>

		<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
            <path fill="#0d6efd" fill-opacity="1"
				d="M0,96L48,128C96,160,192,224,288,218.7C384,213,480,139,576,112C672,85,768,107,864,128C960,149,1056,171,1152,186.7C1248,203,1344,213,1392,218.7L1440,224L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z">
            </path>
        </svg>
		<section id="contact" class="bg-primary pb-5">
			<div class="container text-light">
				<h1 class="text-center pb-5">Contactez-nous</h1>
				<div class="row justify-content-center">
					<div class="col-md-8">
						<form>
							<div class="row mb-3">
								<div class="col-md-6">
									<label for="firstname" class="form-label">Prénom</label> <input
										type="text" class="form-control" id="firstname">
								</div>
								<div class="col-md-6">
									<label for="lastname" class="form-label">Nom</label> <input
										type="text" class="form-control" id="lastname">
								</div>
							</div>
							<div class="mb-3">
								<label for="email" class="form-label">Adresse mail</label> <input
									type="email" class="form-control" id="email">
							</div>
							<div class="mb-3">
								<label for="message" class="form-label">Message</label>
								<textarea type="text" class="form-control" id="message"></textarea>
							</div>
							<button type="submit"
								class="btn btn-lg btn-outline-light d-block mx-auto my-4">Envoyer</button>
						</form>
					</div>
				</div>

			</div>
		</section>
	</div>



	<footer class="d-flex align-items-center bg-dark">
		<jsp:include page="/WEB-INF/includes/footer.jsp" />
	</footer>
</body>
</html>

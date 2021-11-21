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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
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

	<div id="productList">
		<div class="container">
			<div class="row">
				<div class="col mb-3">
					<h1 class="text-center py-4">Liste des produits</h1>
					<div class="table-responsive table-lg mt-3">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>ID</th>
									<th>Nom</th>
									<th>Prix</th>
									<th>Stock</th>
									<th>Type</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="product" items="${productList}">
									<tr>
										<td class="text-nowrap align-middle">${product.id}</td>
										<td class="text-nowrap align-middle">${product.name}</td>
										<td class="text-nowrap align-middle">${product.price}</td>
										<td class="text-nowrap align-middle">${product.stock}</td>
										<td class="text-nowrap align-middle">${product.type}</td>
										<td class="text-center align-middle"><a
											class="btn btn-primary" href="editProduct/${product.id}"><i
												class="bi bi-pencil-fill"></i> Modifier</a> <a
											class="btn btn-danger" href="removeProduct/${product.id}"><i
												class="bi bi-trash-fill"></i> Supprimer</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>


	<footer id="footerinner">
		<jsp:include page="/WEB-INF/includes/footer.jsp" />
	</footer>
</body>
</html>
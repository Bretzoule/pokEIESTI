<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Inscrivez vous</title>
	<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
			crossorigin="anonymous">
	<link rel="stylesheet" href="css/login.css">
</head>
<body>
	
	
	<div class="container">
		<div class="row justify-content-md-center text-center">
			<div class="col-md-6">
				<form action="add" method="post">  
							<img style="width:200px;margin-right:20px;" class="m-5" id="logoTopDroit" src="./assets/PokEISTIWithText.png" alt="logo"> 
							<h1 class="py-4">Inscrivez-vous</h1>
							
							<div class="form-floating m-2">
						    	<input type="text" class="form-control" id="floatingInput" placeholder="nom@exemple.com" name="email">
						    	<label for="floatingInput">Adresse mail</label>
				        	</div>
				        	<div class="form-floating m-2">
						    	<input type="password" class="form-control" id="floatingPassword" placeholder="Mot de passe" name="password">
						    	<label for="floatingPassword">Mot de passe</label>
				        	</div>
							<div class="px-2">
								<input class="btn-lg btn-primary form-control text-white w-100" id="connexion" value="Creer mon compte" type="submit"/>
							</div>
				        
					
				</form>
			</div>
		</div>
	</div>

</body>
</html>
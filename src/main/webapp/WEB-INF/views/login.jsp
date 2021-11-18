<html>  
<head>
	<title>Se connecter</title>
	<link rel="stylesheet" href="css/login.css">
	<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
			crossorigin="anonymous">
</head>
<body class="text-center"> 
	<img style="width:200px;margin-right:20px;" class="m-5" id="logoTopDroit" src="./assets/PokEISTIWithText.png" alt="logo"> 
	<div class="container">
		<div class="row justify-content-md-center">
			<!-- <main class="form-signin p-4"> -->
				
				<div class="d-flex col-md-5">
					<h1>Connectez vous</h1>
					<form action="login" method="post">  
						<!-- Pseudo : <input type="text" name="pseudo"/> <br><br>   
						Password : <input type="text" name="password"/> <br><br>   
						<button name="submit" type="submit">Se connecter</button> -->
						
						<div class="form-floating m-2">
					    	<input type="text" class="form-control" id="floatingInput" placeholder="nom@exemple.com" name="signin_mail">
					    	<label for="floatingInput">Adresse mail</label>
			        	</div>
			        	<div class="form-floating m-2">
					    	<input type="password" class="form-control" id="floatingPassword" placeholder="Mot de passe" name="signin_mdp">
					    	<label for="floatingPassword">Mot de passe</label>
			        	</div>
			
			        <button class="w-100 btn-lg bouton text-white" id="connexion" type="submit">Se connecter</button>
				
				</form>  
				</div>	
				<div class="d-flex col-md-1" style="height: 300px;">
  					<div class="vr"></div>
				</div>
				<div class="d-flex col-md-5">
					<p>Vous n'avez pas de compte ?</p>
					<a class="text-white" href="register"><button class="w-100 text-white btn-lg bouton">Inscrivez vous ici</button></a>
					
				</div>
			<!-- </main> -->
		</div>
	</div>
	</body>  
</html>  

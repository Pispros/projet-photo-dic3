<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>creer compte</title>
<link rel="shortcut icon" href="https://www.pngmart.com/files/3/Star-PNG-Clipart.png" type="image/png">
	<!-- Bootstrap CDN down below --> 
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.2.5/jquery.fancybox.min.css"/>
	<link rel="stylesheet" href="css/gallery.css">

</head>
<body>
	<div class="container" style="margin-bottom: 100px; margin-top: 70px;">
		<div class="row justify-content-center">
			<div class="card col-lg-8">
				<form method="post">
					<div class="card-header">S'Inscrire</div>
					<div class="card-body">
						<div class="form-group">
							<label for="">Prenom:</label> <input type="text"
								class="form-control" name="prenom" id=""
								placeholder="Entrer votre prenom" required>
						</div>
						<div class="form-group">
							<label for="">Nom:</label> <input type="text"
								class="form-control" name="nom" id=""
								placeholder="Entrer votre nom" required>
						</div>
						<div class="form-group">
							<label for="">Login:</label> <input type="text"
								class="form-control" name="login" id=""
								placeholder="Entrer votre login" required>
						</div>
						<div class="form-group">
							<label for="">Mot de Passe:</label> <input type="password"
								class="form-control" name="password" id=""
								placeholder="Entrer Votre Mot de Passe" required>
						</div>
					</div>
					<div class="card-footer text-muted">

						<input name="" id="" class="btn btn-secondary" type="button"
							value="Annuler" onclick="window.location = '/' + window.location.pathname.split('/')[1]" > <input name="" id=""
							class="btn btn-primary" type="submit" value="Enregistrer">
					</div>
				</form>
			</div>

		</div>
	</div>
	<!-- JQuery CDN --> 
	<script src="http://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.2.5/jquery.fancybox.min.js"></script>
	<script src="js/gallery.js"></script>
	<!-- JavaScript Bootstrap CDN --> 
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	
</body>
</html>
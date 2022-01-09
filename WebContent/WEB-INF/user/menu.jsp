<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gallery</title>
<%-- <link rel="stylesheet" href="<c:url value='/css/bootstrap.css'/>"> --%>
<%-- <link rel="stylesheet" href="<c:url value='/css/fontawesome.css'/>"> --%>
<%-- <link rel="stylesheet" href="<c:url value='/css/fontawesome.min.css'/>"> --%>
<%-- <link rel="stylesheet" href="<c:url value='/css/all.css'/>"> --%>
<!-- <script src="https://kit.fontawesome.com/7f5918d569.js" -->
<!-- 	crossorigin="anonymous"></script> -->

<!-- <script type="text/javascript" -->
<%-- 	src="<c:url value='/js/jquery-3.4.1.min.js'/>"></script> --%>
<!-- <script type="text/javascript" -->
<%-- 	src="<c:url value='/js/bootstrap.min.js'/>"></script> --%>
	<link rel="shortcut icon" href="https://www.pngmart.com/files/3/Star-PNG-Clipart.png" type="image/png">
	<!-- Bootstrap CDN down below --> 
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.2.5/jquery.fancybox.min.css"/>	
	<!-- script -->
	<!-- JQuery CDN --> 
	<script src="http://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.2.5/jquery.fancybox.min.js"></script>
	<script src="js/gallery.js"></script>
	<!-- JavaScript Bootstrap CDN --> 
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	
</head>
<body>
	<nav class="navbar fixed-top navbar-expand-sm navbar-dark bg-primary">
		<b> <a class="navbar-brand" href="<c:url value='/user'/>">G<i
				class="fa fa-picture-o" aria-hidden="true"></i>llery
		</a></b>
		<button class="navbar-toggler d-lg-none" type="button"
			data-toggle="collapse" data-target="#collapsibleNavId"
			aria-controls="collapsibleNavId" aria-expanded="false"
			aria-label="Toggle navigation" style="color: white;"></button>
		<div class="collapse navbar-collapse" id="collapsibleNavId">
			<ul class="navbar-nav ml-lg-auto">
				<c:if test="${sessionScope.sessionUtilisateur.role == 'admin'}">
					<li class="nav-item active"><a class="nav-link mx-2"
						href="<c:url value='/admin/users'/>" style="color: white;"><i
							class="fa fa-users" aria-hidden="true"></i> Utilisateurs</a></li>
					<li class="nav-item active"><a class="nav-link mx-2"
						href="<c:url value='/admin/albums'/>" style="color: white;"><i
							class="fa fa-folder" aria-hidden="true"></i> Albums</a></li>
				</c:if>
				<li class="nav-item active"><a class="nav-link mx-2"
					href="<c:url value='/user/albums'/>" style="color: white;"><i
						class="fa fa-folder-open" aria-hidden="true"></i> Mes Albums</a></li>
				<li class="nav-item"><a class="nav-link "
					href="<c:url value='/user/account?login=${sessionScope.sessionUtilisateur.login}'/>"
					style="color: white;"><i class="fa fa-user-circle"
						aria-hidden="true"></i> <c:if
							test="${!empty sessionScope.sessionUtilisateur}">${sessionScope.sessionUtilisateur.prenom}</c:if></a></li>
			</ul>
		</div>
	</nav>
</body>
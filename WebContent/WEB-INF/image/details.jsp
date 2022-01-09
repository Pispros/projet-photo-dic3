<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details Image</title>
<link rel="stylesheet" href="<c:url value='/css/bootstrap.css'/>">
<script src="https://kit.fontawesome.com/7f5918d569.js"
	crossorigin="anonymous"></script>

</head>
<body>
		<c:choose>
		<c:when test="${!empty sessionScope.sessionUtilisateur}">
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
		</c:when>
		<c:otherwise>
			<nav class="navbar fixed-top navbar-expand-sm navbar-dark bg-primary">
				<a class="navbar-brand" href="#"><i>G<i
						class="fa fa-picture-o" aria-hidden="true"></i>llery
				</i></a>
				<button class="navbar-toggler d-lg-none" type="button"
					data-toggle="collapse" data-target="#collapsibleNavId"
					aria-controls="collapsibleNavId" aria-expanded="false"
					aria-label="Toggle navigation" style="color: white;"></button>
				<div class="collapse navbar-collapse" id="collapsibleNavId">
					<ul class="navbar-nav ml-lg-auto">
						<li class="nav-item active"><a class="nav-link"
							href="<c:url value='/user/create'/>" style="color: white;"><i>Créer
									Compte</i></a></li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value='/user/connect'/>" style="color: white;"><i>Se
									Connecter</i></a></li>
					</ul>
				</div>
			</nav>
		</c:otherwise>
	</c:choose>
	<div class="container" style="margin-top: 70px;">
		<div class="row">
			<div class="col-md-5">
				<img alt=""
					src="/Gallery/imagesuploaded/${ requestScope.imageDetails.url }"
					style="width:100%; heigth:auto;">
			</div>
			<div class="col-md-5">
			<b class="text-primary">Titre:</b><br>
			<h4><c:out value="${requestScope.imageDetails.titre }"></c:out></h4>
			<b class="text-primary">Description:</b><br>
			<h4><c:out value="${requestScope.imageDetails.description }"></c:out></h4><br>
			<b class="text-primary">Date de Création:</b><br>
			<h4><c:out value="${requestScope.imageDetails.date_creation }"></c:out></h4><br>
			<b class="text-primary">Date de dernier mis à jour:</b><br>
			<h4><c:out value="${requestScope.imageDetails.date_update }"></c:out></h4><br>
			<b class="text-primary">Hauteur:</b><br>
			<h4><c:out value="${requestScope.imageDetails.hauteur }"></c:out></h4><br>
			<b class="text-primary">Largeur:</b><br>
			<h4><c:out value="${requestScope.imageDetails.largeur }"></c:out></h4>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details Album</title>
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
				<h2>
					<i class="fa fa-folder-o" aria-hidden="true"></i> <b><c:out
							value="${ requestScope.albumDetails.nom }"></c:out></b>
				</h2>
			</div>
			<div class="col-md-5">
				<b class="text-primary">Type:</b><br>
				<h4>
					<c:out value="${ requestScope.albumDetails.type}"></c:out>
				</h4>
				<b class="text-primary">Theme:</b><br>
				<h4>
					<c:out value="${ requestScope.albumDetails.theme }"></c:out>
				</h4>
				<br> <b class="text-primary">Information Proprietaire:</b><br>
				<h4>
					<c:out value="${ requestScope.albumDetails.proprietaire }"></c:out>
				</h4>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil</title>
<link rel="stylesheet" href="<c:url value='/css/bootstrap.css'/>">
<script src="https://kit.fontawesome.com/7f5918d569.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

</head>
<body>
	<nav class="navbar fixed-top navbar-expand-sm navbar-dark bg-primary">
		<a class="navbar-brand" href="<c:url value='/accueil'/>"><i>G<i
				class="fa fa-picture-o" aria-hidden="true"></i>llery
		</i></a>
		<button class="navbar-toggler d-lg-none" type="button"
			data-toggle="collapse" data-target="#collapsibleNavId"
			aria-controls="collapsibleNavId" aria-expanded="false"
			aria-label="Toggle navigation" style="color: white;"></button>
		<div class="collapse navbar-collapse" id="collapsibleNavId">
			<ul class="navbar-nav ml-lg-auto">
				<li class="nav-item active"><a class="nav-link"
					href="<c:url value='/user/create'/>" style="color: white;"><i>Créer Compte</i></a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value='/user/connect'/>"
					style="color: white;"><i>Se Connecter</i></a></li>
			</ul>
		</div>
	</nav>

	<!-- Les photos publics -->
	<div class="container" style="margin-top: 70px;">
		<c:choose>
			<c:when test="${ empty requestScope.imagesPublics}">
				<p>Pas d'images encore disponibles</p>
			</c:when>
			<c:otherwise>
				<div class="row justify-content-center">
					<c:forEach items="${requestScope.imagesPublics}" var="imagePublic">
						<div class="col-md-4">
							<div class="card">
								<img class="card-img-top image" data-id="${ imagePublic.url }"
									src="/Gallery/imagesuploaded/${imagePublic.url }"
									style="max-width: 100%; height: 400px;"
									alt='<c:out value='${imagePublic.titre }'></c:out>'
									data-toggle="modal" data-target="#modelId">

								<div class="card-body">
									<h5 class="card-description text-primary">
										<b><a
											href="image/details?url=<c:out value="${imagePublic.url }"></c:out>">
												<c:out value='${imagePublic.titre }'></c:out>
										</a></b>
									</h5>
									<p class="card-text">
										<b><c:out value='${imagePublic.date_creation }'></c:out></b><br>
										<c:out value='${imagePublic.description }'></c:out>
									</p>
								</div>
								<a class="nav-link  btn btn-primary"
									href="album/details?album=<c:out value='${imagePublic.album}'></c:out>"><i
									class="fa fa-eye" aria-hidden="true"></i> voir</a>
							</div>
						</div>
						<!-- Modal -->
					</c:forEach>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
	<div class="modal fade" id="modelId" tabindex="-1" role="dialog"
		aria-labelledby="modelTitleId" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">

				<div class="modal-body" id="imgModalBody"></div>
			</div>
		</div>
	</div>
	
	<script>
		$(document).on(
				"click",
				".image",
				function(e) {
					let url = $(e.target).closest("img").data("id");
					let source = "/Gallery/imagesuploaded/" + url;
					$('#imgModalBody').html(
							'<img alt="test" src=' + source
									+ ' style="width: 100%; height:auto">');
				});
	</script>
</body>
</html>
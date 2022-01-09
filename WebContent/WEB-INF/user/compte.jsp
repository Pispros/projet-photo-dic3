<%@include file="menu.jsp"%>
<body>
<div class="container" style="margin-bottom: 100px; margin-top: 70px;">
		<div class="row justify-content-center">
			<div class="card col-lg-8">
				<form method="post">
					<div class="card-header">Vos Informations</div>
					<c:if test="${!empty requestScope.infoUtilisateur}">
					<div class="card-body">
						<div class="form-group">
							<label for="">Prenom:</label> <input type="text"
								class="form-control" name="prenom" id=""
								value='<c:out value="${requestScope.infoUtilisateur.prenom }"></c:out>'
								required>
						</div>
						<div class="form-group">
							<label for="">Nom:</label> <input type="text"
								class="form-control" name="nom" id=""
								value='<c:out value="${requestScope.infoUtilisateur.nom }"></c:out>'
								required>
						</div>
						<div class="form-group">
							<label for="">Login:</label> <input type="text"
								class="form-control" name="login" id=""
								value='<c:out value="${requestScope.infoUtilisateur.login}"></c:out>'
								disabled="disabled" required>
						</div>
						<div class="form-group">
							<label for="">Mot de Passe:</label> <input type="text"
								class="form-control" name="password" id=""
								value='<c:out value="${requestScope.infoUtilisateur.password }"></c:out>'
								required>
						</div>
					</div>
					</c:if>
					<div class="card-footer text-muted">

						<input name="" id="" class="btn btn-secondary" type="button"
							value="Annuler"> <input name="" id=""
							class="btn btn-warning" type="submit" value="Modifier">

					</div>
				</form>
			</div>

		</div>
	</div>
</body>
</html>
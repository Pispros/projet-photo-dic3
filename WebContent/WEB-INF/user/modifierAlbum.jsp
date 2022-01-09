<%@include file="menu.jsp"%>

<div class="container" style="margin-bottom: 100px; margin-top: 70px;">
	<div class="row justify-content-center">
		<div class="card col-lg-8">
			<form method="post">
				<div class="card-header">Information Album</div>
					<div class="card-body">
						<div class="form-group">
										<label for="">Nom:</label> <input type="text" name="nomAlbum" id=""
											value='<c:out value="${requestScope.infoAlbum.nom }"></c:out>'
											 class="form-control"required="required">
									</div>
									<div class="form-group">
										<label for="">Type:(<c:out value="${requestScope.infoAlbum.type }"></c:out>)</label> <select class="form-control"
											name="type" id="">
											<option>PUBLIC</option>
											<option>PRIVATE</option>
										</select>
									</div>
									<div class="form-group">
										<label for="">Theme: (<c:out value="${requestScope.infoAlbum.theme }"></c:out>)</label> <select class="form-control"
											name="theme" id="">
											<option>Vacances</option>
											<option>Sport</option>
											<option>Loisir</option>
											<option>Sortie</option>
											<option>Autres</option>
										</select>
									</div>
					</div>
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
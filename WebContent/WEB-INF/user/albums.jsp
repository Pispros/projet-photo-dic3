<%@include file="menu.jsp"%>
<div class="container" style="margin-top: 70px;">
	
	<div class="row">
		<div class="col-md-2">
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary btn-md"
				data-toggle="modal" data-target="#modelAlbum">
<i class="fas fa-plus"></i> Album
			</button>

			<!-- Modal -->
			<div class="modal fade" id="modelAlbum" tabindex="-1" role="dialog"
				aria-labelledby="modelTitleId" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<form action="./createalbum" method="POST">
							<div class="modal-header">
								<h5 class="modal-title">Ajouter un album</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<div class="container-fluid">

									<div class="form-group">
										<label for="">Nom:</label> <input type="text" name="nomAlbum"
											id="" class="form-control" placeholder="" required="required">
									</div>
									<div class="form-group">
										<label for="">Type</label> <select class="form-control"
											name="type" id="">
											<option>PUBLIC</option>
											<option>PRIVATE</option>
										</select>
									</div>
									<div class="form-group">
										<label for="">Theme</label> <select class="form-control"
											name="theme" id="">
											<option>Vacances</option>
											<option>Sport</option>
											<option>Loisir</option>
											<option>Sortie</option>
											<option>Autres</option>
										</select>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-primary">Save</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-10">
			<h4>Liste Albums</h4>
			<hr>
			<c:choose>
			<c:when test="${ empty requestScope.albums }">
				<p>La liste des albums est vide</p>
			</c:when>
			<c:otherwise>
			<table class="table">
				<thead>
					<tr>
						<th>Name</th>
						<th colspan="3">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${requestScope.albums}" var="album">
						<tr>
							<td scope="row"><i class="fa fa-folder-o" aria-hidden="true"></i> <c:out value='${album.nom }'/></td>
							<td><a class="btn btn-primary" href="<c:url value='/user/album/voir?id=${album.id}'/>"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
							<td><a class="btn btn-warning" href="<c:url value='/user/album/modifier?id=${album.id}'/>"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
							<td><a class="btn btn-danger" 	href="<c:url value='/user/album/supprimer?id=${album.id}'/>" onclick="return confirm('En êtes vous sûr ?')"><i class="fa fa-trash" aria-hidden="true"></i></a></td>	
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</c:otherwise>
			</c:choose>
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
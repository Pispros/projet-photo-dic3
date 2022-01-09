<%@include file="../user/menu.jsp"%>
<div class="container" style="margin-top: 70px;">
			<h4>Liste Utlisateurs</h4>
			<hr>
			<c:choose>
				<c:when test="${ empty requestScope.albums }">
					<p>La liste des Albums est vide</p>
				</c:when>
				<c:otherwise>
					<table class="table table-striped">
						<thead>
							<tr>
								<th><i>Nom</i></th>
								<th><i>Type</i></th>
								<th><i>Theme</i></th>
								<th><i>Proprietaire</i></i></th>
								<th colspan="2"><i>Action</i></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${requestScope.albums}" var="album">
								<tr>
									<td><c:out value='${album.nom }' /></td>
									<td><c:out value='${album.type }' /></td>
									<td><c:out value='${album.theme }' /></td>
									<td><a href="<c:url value='/admin/user/voir?login=${album.proprietaire}'/>"><c:out value='${album.proprietaire }' /></a></td>
									<td><a class="btn btn-primary"
										href="<c:url value='/admin/album/voir?id=${album.id}'/>"><i
											class="fa fa-eye" aria-hidden="true"></i></a></td>
									<td><a class="btn btn-danger"
										href="<c:url value='/admin/album/supprimer?id=${album.id}'/>"
										onclick="return confirm('En êtes vous sûr ?')"><i
											class="fa fa-trash" aria-hidden="true"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:otherwise>
			</c:choose>
	</div>
</body>
</html>
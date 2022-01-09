<%@include file="../user/menu.jsp"%>
<div class="container" style="margin-top: 70px;">
	<div class="row">
		<div class="col-md-6">
			<h4 class="text-primary"><b>Informations Utilisateur</b></h4><hr>
			<b class="text-primary"> Prenom :</b><h4><c:out value="${ requestScope.user.prenom }"></c:out></h4><br>
			<b class="text-primary">Nom : </b><h4><c:out value="${ requestScope.user.nom }"></c:out></h4><br>
			<b class="text-primary">Login : </b><h4><c:out value="${ requestScope.user.login }"></c:out></h4><br>
		</div>
		<div class="col-md-6">
			<h4 class="text-primary">
				<b>Les albums de <c:out value="${ requestScope.user.prenom }"></c:out></b>
			</h4><hr>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Nom</th>
						<th>Type</th>
						<th>Theme</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${requestScope.albums}" var="album">
						<tr>
							<td><c:out value='${album.nom}' /></td>
							<td><c:out value='${album.type}' /></td>
							<td><c:out value='${album.theme }' /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>
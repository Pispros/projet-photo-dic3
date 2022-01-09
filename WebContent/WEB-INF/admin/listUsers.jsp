<%@include file="../user/menu.jsp"%>
<div class="container" style="margin-top: 70px;">
			<h4>Liste Utlisateurs</h4>
			<hr>
			<c:choose>
				<c:when test="${ empty requestScope.users }">
					<p>La liste des Utilisateurs est vide</p>
				</c:when>
				<c:otherwise>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Prenom</th>
								<th>Nom</th>
								<th>Role</th>
								<th colspan="3">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${requestScope.users}" var="user">
								<tr>
									<td><c:out value='${user.prenom }' /></td>
									<td><c:out value='${user.nom }' /></td>
									<td><c:out value='${user.role }' /></td>
									<td><a class="btn btn-primary"
										href="<c:url value='/admin/user/voir?login=${user.login}'/>"><i
											class="fa fa-eye" aria-hidden="true"></i></a></td>
									<td><a class="btn btn-danger"
										href="<c:url value='/admin/user/supprimer?login=${user.login}'/>"
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
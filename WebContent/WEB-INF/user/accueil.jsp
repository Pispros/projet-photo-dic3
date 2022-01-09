<%@include file="menu.jsp"%>
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
							<img class="card-img-top image"
								data-id="${ imagePublic.url }"
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
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			
			<div class="modal-body" id="imgModalBody">
				
			</div>
		</div>
	</div>
</div>

<script>
$(document).on("click", ".image", function (e){
	let url = $(e.target).closest("img").data("id");
	let source = "/Gallery/imagesuploaded/"+url;
    $('#imgModalBody').html('<img alt="test" src='+source+' style="width: 100%; height:auto">');    	        
});
</script>
</body>
</html>
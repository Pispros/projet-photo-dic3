<%@include file="../user/menu.jsp"%>
<div class="container" style="margin-top: 70px;">

		<b><i><c:out value='${requestScope.album.nom }'></c:out></i></b>
	<hr>
	<div class="row">
		<c:choose>
			<c:when test="${ empty requestScope.imagesAlbum }">
				<p>Cette album ne contient pas encore d'Image</p>
			</c:when>
			<c:otherwise>
				<c:forEach items="${requestScope.imagesAlbum}" var="image">
					<div class="col-md-4">
						<div class="card">
							<img class="card-img-top image"
								src="/Gallery/imagesuploaded/${image.url }"
								alt="<c:out value='${image.titre }'></c:out>"
								style="width: auto; height: 400px;" data-id="${image.url}"
								data-toggle="modal" data-target="#modelImg">
								<a class="btn btn-danger" href='<c:url value="photo/supprimer?url=${ image.url }"></c:url>'>supprimer</a> 					
						</div>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>

	</div>
</div>

<div class="modal fade" id="modelImg" tabindex="-1" role="dialog"
	aria-labelledby="modelTitleId" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">

			<div class="modal-body" id="imgModalBody"></div>
		</div>
	</div>
</div>
<script>
$(document).on("click", ".image", function (e){
	let url = $(e.target).closest("img").data("id");
    $('#imgModalBody').html('<img alt="test" src="<c:url value="/imagesuploaded/'+url+'"/>" style="width: 100%; height:auto">');    	        
});
</script>

</body>
</html>
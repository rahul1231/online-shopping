<p class="lead">Shop Name</p>
<div class="list-group">

	<c:forEach items="${categories}" var="category">
		<a href="${contextRoot}/show/category/${product.id}/products" class="list-group-item" id="a_${product.name}">${product.name}</a>
	</c:forEach>

</div>
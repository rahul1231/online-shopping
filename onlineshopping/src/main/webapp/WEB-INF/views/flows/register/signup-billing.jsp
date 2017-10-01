<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</title>

<script>
	window.menu = '${title}';

	window.contextRoot = '${contextRoot}';
</script>

<!-- jQuery -->
<script src="${js}/jquery.js"></script>

<!-- Bootstrap core JavaScript -->
<script src="${js}/vendor.min.js"></script>
<script src="${js}/bootstrap.min.js"></script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme CSS -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

<!-- jQuery validator -->
<script src="${js}/jquery.validate.js"></script>

<!-- DataTable Plugin -->
<script src="${js}/jquery.dataTables.js"></script>

<!-- DataTable Bootstrap Script -->
<script src="${js}/dataTables.bootstrap.js"></script>

<!-- Bootbox -->
<script src="${js}/bootbox.min.js"></script>

<!-- Self Coded js -->
<script src="${js}/myapp.js"></script>

</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="${flowExecutionUrl}&_eventId_home">Home</a>
				</div>
			</div>
		</nav>

		<div class="container">

			<div class="row">
			
				<div class="col-md-6 col-md-offset-3">
				
					<div class="panel panel-primary">
					
						<div class="panel-heading">
							<h4>Sign Up - Address</h4>
						</div>
					
						<div class="panel-body">
						
							<sf:form
							 method="POST"
							 class="form-horizontal"
							 id="billingForm"
							 modelAttribute="billing">
							
							<div class="form-group">
								<label class="control-label col-md-4" for="addressLineOne">Address Line One</label>
								<div class="col-md-8">
									<sf:input type="text" path="addressLineOne" class="form-control"
									 placeholder="Enter Address Line One" />
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-4" for="addressLineTwo">Address Line Two</label>
								<div class="col-md-8">
									<sf:input type="text" path="addressLineTwo" class="form-control"
									 placeholder="Enter Address Line Two" />
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-4" for="city">City</label>
								<div class="col-md-8">
									<sf:input type="text" path="city" class="form-control"
									 placeholder="Enter City Name" />
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-4" for="postalCode">Postal Code</label>
								<div class="col-md-8">
									<sf:input type="text" path="postalCode" class="form-control"
									 placeholder="XXXXXX" />
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-4" for="state">State</label>
								<div class="col-md-8">
									<sf:input type="text" path="state" class="form-control"
									 placeholder="Enter State Name" />
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-4" for="country">Country</label>
								<div class="col-md-8">
									<sf:input type="text" path="country" class="form-control"
									 placeholder="Enter Country Name" />
								</div>
							</div>
							
							<div class="form-group">
								<div class="col-md-offset-4 col-md-8">
									<!-- submit button for moving to the personal -->
									<button type="submit" class="btn btn-primary"
											name="_eventId_personal">

											<span class="glyphicon glyphicon-chevron-left"></span> Previous - Personal 

										</button>
									
									<!-- submit button for moving to the confirm -->
									<button type="submit" class="btn btn-primary"
											name="_eventId_confirm">

											Next - Confirm <span class="glyphicon glyphicon-chevron-right"></span> 

										</button>
								</div>
							</div>
							
							</sf:form>
						
						</div>
						
					</div>
				
				</div>
			
			</div>

		</div>

	</div>

	<!-- Footer -->
	<%@include file="../../shared/footer.jsp"%>

</body>

</html>
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
		<nav class="navbar navbar-inverse navbar-fixed-top navbar-dark bg-dark" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="${flowExecutionUrl}&_eventId_home">Home</a>
				</div>
			</div>
		</nav>

		<div class="container">
		
			<div class="row">
			
				<!-- column to display the personal details -->
				<div class="col-sm-6">
				
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4>Personal Details</h4>
						</div>
						<div class="panel-body">
							<!-- code to display the personal details -->
							<div class="text-center">
							
								<h4>${registerModel.user.firstName} ${registerModel.user.lastName}</h4>
							
								<h5>Email: ${registerModel.user.email}</h5>
								
								<h5>Contact Number: ${registerModel.user.contactNumber}</h5>
								
								<h5>Role: ${registerModel.user.role}</h5>
								
							</div>
						</div>
						<div class="panel-footer">
							<!-- anchor to move to the edit of personal details -->
							<a href="${flowExecutionUrl}&_eventId_personal" class="btn btn-primary">Edit</a>
						</div>
					</div>
				
				</div>
				
				<!-- column to display the address -->
				<div class="col-sm-6">
					
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4>Billing Address</h4>
						</div>
						<div class="panel-body">
							<!-- code to display the communication address -->
							<div class="text-center">
							
								<h4>${registerModel.billing.addressLineOne}</h4>
								<h4>${registerModel.billing.addressLineTwo}</h4>
								<h4>${registerModel.billing.city} - ${registerModel.billing.postalCode}</h4>
								<h4>${registerModel.billing.state} - ${registerModel.billing.country}</h4>				
							</div>
							
						</div>
						<div class="panel-footer">
							<!-- anchor to move to the edit of address -->
							<a href="${flowExecutionUrl}&_eventId_billing" class="btn btn-primary">Edit</a>
						</div>
					</div>
				
				
				</div>
			</div>
		
		
		<!-- to provide the confirm button after displaying the details -->
		<div class="row">
			<div class="col-sm-4 col-sm-offset-4">			
				<div class="text-center">
					
					<a href="${flowExecutionUrl}&_eventId_submit" class="btn btn-primary">Confirm</a>
					
				</div>			
			</div>		
		</div>
		</div>

		<!-- Footer -->
		<%@include file="../../shared/footer.jsp"%>
		
	</div>
</body>

</html>
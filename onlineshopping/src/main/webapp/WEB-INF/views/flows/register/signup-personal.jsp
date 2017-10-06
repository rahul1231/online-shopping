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

				<div class="col-md-6 col-md-offset-3">

					<div class="panel panel-primary">

						<div class="panel-heading">
							<h4>Sign Up - Personal</h4>
						</div>

						<div class="panel-body">

							<sf:form method="POST" class="form-horizontal" id="registerForm" modelAttribute="user">

								<div class="form-group">
									<label class="control-label col-md-4">First Name</label>
									<div class="col-md-8">
										<sf:input type="text" path="firstName" class="form-control"
											placeholder="First Name" />
										<sf:errors path="firstName" cssClass="help-block" element="em"/>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-4">Last Name</label>
									<div class="col-md-8">
										<sf:input type="text" path="lastName" class="form-control"
											placeholder="Last Name" />
										<sf:errors path="lastName" cssClass="help-block" element="em"/>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-4">Email</label>
									<div class="col-md-8">
										<sf:input type="text" path="email" class="form-control"
											placeholder="abc@zyx.com" />
										<sf:errors path="email" cssClass="help-block" element="em"/>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-4">Contact Number</label>
									<div class="col-md-8">
										<sf:input type="text" path="contactNumber"
											class="form-control" placeholder="XXXXXXXXXX" maxlength="10" />
										<sf:errors path="contactNumber" cssClass="help-block" element="em"/>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-4">Password</label>
									<div class="col-md-8">
										<sf:input type="password" path="password" class="form-control"
											placeholder="Password" />
										<sf:errors path="password" cssClass="help-block" element="em"/>
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-md-4">Confirm Password</label>
									<div class="col-md-8">
										<sf:input type="password" path="confirmPassword" class="form-control"
											placeholder="Re-enter Password" />
										<sf:errors path="confirmPassword" cssClass="help-block" element="em"/>
									</div>
								</div>
								

								<!-- radio button using bootstrap class of radio-inline -->
								<div class="form-group">
									<label class="control-label col-md-4">Select Role</label>
									<div class="col-md-8">
										<label class="radio-inline"> <sf:radiobutton
												path="role" value="USER" checked="checked" /> User
										</label> <label class="radio-inline"> <sf:radiobutton
												path="role" value="SUPPLIER" /> Supplier
										</label>
									</div>
								</div>

								<div class="form-group">
									<div class="col-md-offset-4 col-md-8">
										<!-- submit button inside the from -->
										<button type="submit" class="btn btn-primary"
											name="_eventId_billing">

											Next - Billing <span
												class="glyphicon glyphicon-chevron-right"></span>

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
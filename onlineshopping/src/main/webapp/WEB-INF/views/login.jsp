<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<spring:url var="css" value="/resources/css"/>
<spring:url var="js" value="/resources/js"/>
<spring:url var="images" value="/resources/images"/>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
	
    <title>Online Shopping - ${title}</title>
    
    <script>
    	window.menu='${title}';
    	
    	window.contextRoot='${contextRoot}';
    	
    </script>
	
	<!-- jQuery -->
    <script src="${js}/jquery.js"></script>
    
    <!-- Bootstrap core JavaScript -->
	<script src="${js}/vendor.min.js"></script>
    <script src="${js}/bootstrap.min.js"></script>
	
	 <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    
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
    <nav class="navbar navbar-inverse" role="navigation">
    	<div class="container">
    		<!-- Brand and toggle get grouped for better mobile display -->
    		<div class="navbar-header">
    			<a class="navbar-brand" href="${contextRoot}/home">Online Shopping</a>
    		</div>
    	</div>
    </nav>
    
    <!-- Page Content -->
    
    <div class="content">
    
    	<div class="container">
    	
    		<div class="row">
    		
    			<div class="col-md-offset-3 col-md-6">
    			
    				<div class="panel panel-primary">
    				
    					<div class="panel-heading">
    						<h4>Login</h4>
    					</div>
    				
    					<div class="panel-body">
    						<form action="${contextRoot}/login" method="POST" class="form-horizontal"
    						 id="loginForm"
    						>
    						 <div class="form-group">
    						  <label for="username" class="col-md-4 control-label">Email: </label>
    						  <div class="col-md-8">
    						   <input type="text" name="username" id="username" class="form-control"/>

    						  </div>
    						 </div>	
    						 <div class="form-group">
    						  <label for="password" class="col-md-4 control-label">Password: </label>
    						  <div class="col-md-8">
    						   <input type="password" name="password" id="password" class="form-control"/>
    						  </div>
    						 </div>	
    						 <div class="form-group">
    						  <div class="col-md-offset-4 col-md-8">
    						   <input type="submit" value="Login" class="btn btn-primary" />
    						  </div>
    						 </div>		
    					<form>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
	</div>

    <!-- Footer -->
    <%@include file="./shared/footer.jsp" %>
    
	</div>

  </body>

</html>
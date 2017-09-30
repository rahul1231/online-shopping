<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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
    
    
    <!-- Page Content -->
    
    <div class="content">
    	
    	<div class="container">
    	
    		<h3>This will be triggered by flow!</h3>
    	
    	</div>
	
	</div>

    <!-- Footer -->
    <%@include file="../../shared/footer.jsp" %>
    
	</div>

  </body>

</html>

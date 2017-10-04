<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %> 
 
 
 <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
        <a class="navbar-brand" href="${contextRoot}/home">Online Shopping</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li id="home">
              <a class="nav-link" href="${contextRoot}/home">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li id="about">
              <a class="nav-link" href="${contextRoot}/about">About</a>
            </li>
            <li id="contact">
              <a class="nav-link" href="${contextRoot}/contact">Contact</a>
            </li>
             <li id="listProducts">
              <a class="nav-link" href="${contextRoot}/show/all/products">View products</a>
            </li>
            
            <security:authorize access="hasAuthority('ADMIN')">
	            <li id="manageProducts">
	              <a class="nav-link" href="${contextRoot}/manage/products">Manage products</a>
	            </li>
            </security:authorize>
          </ul>
          
          <ul class="nav navbar-nav navbar-right">
          	<security:authorize access="isAnonymous()">
          	<li id="register">
              <a class="nav-link" href="${contextRoot}/register">Sign Up</a>
            </li>
            <li id="login">
              <a class="nav-link" href="${contextRoot}/login">Login</a>
            </li>
          	</security:authorize>
          	
          	<security:authorize access="isAuthenticated()">
          	<li class="dropdown">
          	
          		<a href="javascript:void(0)"
          			class="btn btn-default dropdown-toggle"
          			id="dropdownMenu1"
          			data-toggle="dropdown">
          			
          				${userModel.fullName}
          				
          			
          			</a>
          	
          			<ul class="dropdown-menu">
          				
          				
          				<security:authorize access="hasAuthority('USER')">
          				<li>
          					<a href="${contextRoot}/cart">
          					
          						<span class="glyphicon glyphicon-shopping-cart"></span>
          						<span class="badge">${userModel.cart.cartLines}</span>
          						- &#8377; ${userModel.cart.grandTotal}
          					
          					</a>
          				</li>
          				
          				<li class="divider" role="separator"></li>
          				</security:authorize>
          				<li>        				
          					<a href="${contextRoot}/logout">Logout</a>
          				</li>
          				         				
          			</ul>
          	</li>
          	</security:authorize>
          
          </ul>
          
        </div>
      </div>
    </nav>
	
    <script>
    
    	window.userRole='${userModel.role}';
    
    
    </script>
    
    
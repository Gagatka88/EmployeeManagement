<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- dodajemy taglib dla form, ponieważ logout buttn musi byc częścią form -->

<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!--dodajemy tez taglib dla spring security - powyzej  -->
<html>
	<head>
		<title>Company XXX Home Page</title>
	</head>
	
	<body>
		<h2>Welcome to Company XXX Home Page</h2>
		<hr>
		<p>
		You are now logged in.
		Please read information below.
		</p>
		<hr>
		My name is Agata and I would like to join ElenX.
		
		<hr>
		
		<p>
			User: <security:authentication property="principal.username"/>
			<br><br>
			Role: <security:authentication property="principal.authorities"/>
		</p>
		
		<hr>

		
		<security:authorize access="hasRole('MANAGER')">
			<p>
				<a href="${pageContext.request.contextPath}/leaders">Leadership
					Meeting</a> (Only for Managers)
			</p>

		</security:authorize>

		<security:authorize access="hasAnyRole('ADMIN')">
			<p>
				<a href="${pageContext.request.contextPath}/systems">Special information</a>
				 (Only for Admins)
			</p>
		</security:authorize>

	
		<hr>
		
		<form:form action="${pageContext.request.contextPath}/logout" 
		method="POST">
			<input type="submit" value="logout"/>
		</form:form>
	</body>
	
</html>
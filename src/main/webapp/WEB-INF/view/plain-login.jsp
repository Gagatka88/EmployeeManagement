<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>Login Page - Hello World of ElneX</title>
	
	<style>
		.failed {
			color: red;
		}
	</style>
</head>

<body>
<h3>Login page</h3>


<form:form action="${pageContext.request.contextPath}/authenticateTheUser" 
			method="POST">
			
		
		<c:if test="${param.error  != null }">
			<i class="failed">Sorry you entered invalid username or password</i>
		
		</c:if>
			

		<p>
			User name: <input type="text" name="username"/>
		</p>
		<p>
			User name: <input type="password" name="password"/>
		</p>
	
		<input type="submit" value="Login"/>

</form:form>

</body>
</html>
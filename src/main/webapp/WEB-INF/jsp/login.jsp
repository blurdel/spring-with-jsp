<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login.jsp</title>
</head>
<body>
	<h3>Person Login</h3>
	
	<form:form method="POST" action="doLogin" modelAttribute="pPerson">
		<table>
			<tbody>
				<tr>
					<td><form:label path="name">Name:</form:label></td>
					<td><form:input path="name"/></td>
				</tr>
				<tr>
					<td><form:label path="password">Password:</form:label></td>
					<td><form:input path="password"/></td>
				</tr>
				<tr>
					<td><form:label path="age">Age:</form:label></td>
					<td><form:input path="age"/></td>
				</tr>
			</tbody>
		</table>
		<input type="submit" value="Login">
	</form:form>
	
	<p><a href="showGrid">Show Grid</a>
	</p>
	
</body>
</html>

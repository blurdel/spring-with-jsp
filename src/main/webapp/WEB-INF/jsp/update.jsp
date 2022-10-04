<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update.jsp</title>
</head>
<body>
	<h3>Person Update</h3>
	
	<form:form method="POST" action="doUpdate" modelAttribute="pList">
		<table>
			<tbody>
				<c:forEach items="${pList.personList}" var="person" varStatus="s">
					<tr>
						<td><input name="personList[${s.index}].name" value="${person.name}"></td>
						<td><input name="personList[${s.index}].password" value="${person.password}"></td>
						<td><input name="personList[${s.index}].age" value="${person.age}"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<input type="submit" value="Update"/>
	</form:form>
	
</body>
</html>
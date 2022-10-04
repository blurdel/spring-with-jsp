<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>viewList.jsp</title>
</head>
<body>
	<h3>Person List</h3>
	
	<form:form action="" modelAttribute="pList">
		<table>
			<tbody>
				<c:forEach items="${pList.personList}" var="person" varStatus="s">
					<tr>
						<td><c:out value="${person.name}"></c:out></td>
						<td><c:out value="${person.password}"></c:out></td>
						<td><c:out value="${person.age}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form:form>
	
</body>
</html>
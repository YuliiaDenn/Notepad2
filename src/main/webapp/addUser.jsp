<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New user</title>
</head>
<body>

	<c:if test="${newUser == null} ">
	</c:if>
	<fieldset>
		<legend> Add User!</legend>
		<form action="AddServlet" method="post">

			<table>
				<tr>
					<td align="right">Surname:</td>
					<td><input type="text" name="surname"></td>
				</tr>
				<tr>
					<td align="right">Name:</td>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td align="right">Second Name:</td>
					<td><input name="secondName" /></td>
				</tr>
				<tr>
					<td align="right">Phone Number:</td>
					<td><input name="phoneNumber" /></td>
				</tr>
				<tr>
					<td align="right">City:</td>
					<td><input type="text" name="city" /></td>
				</tr>
				<tr>
					<td align="right">Street:</td>
					<td><input name="street" /></td>
				</tr>
				<tr>
					<td align="right">Building number:</td>
					<td><input name="buildingNumber" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Add" /></td>
				</tr>
			</table>
		</form>
	</fieldset>
	<c:if test="${newUser != null}">
		<c:redirect url="/added.jsp" />
	</c:if>

	<br />
	<form action="/webNotebook2/StartServlet">
		<button type="submit">Start page</button>
	</form>
</body>
</html>
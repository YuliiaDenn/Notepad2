<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All users by name</title>
</head>
<body>
	<h2>All users by name!</h2>

	<div align="left">
		<table border="1">
			<tr>
				<th rowspan="2"></th>
				<th rowspan="2">Surname</th>
				<th rowspan="2">Name</th>
				<th rowspan="2">Second Name</th>
				<th rowspan="2">Phone Number</th>
				<th colspan="3">Address</th>
			</tr>
			<tr>
				<th>city</th>
				<th>street</th>
				<th>building number</th>
			</tr>
			<c:forEach var="num" items="${listByName}">
				<tr>
					<td>${num.id}</td>
					<td>${num.surname}</td>
					<td>${num.name}</td>
					<td>${num.secondName}</td>
					<td>${num.phoneNumber}</td>
					<td>${num.address.city}</td>
					<td>${num.address.street}</td>
					<td>${num.address.buildingNumber}</td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<br />
	<form action="/webNotebook2/ListByNameServlet">
		<button type="submit">Back</button>
	</form>

	<br />
	<form action="/webNotebook2/StartServlet">
		<button type="submit">Start page</button>
	</form>
</body>
</html>
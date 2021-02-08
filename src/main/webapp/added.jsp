<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>User ${newUser.surname} ${newUser.name} ${newUser.secondName},
		phone number: ${newUser.phoneNumber}. Address: city
		${newUser.address.city}, street ${newUser.address.street}, building
		number ${newUser.address.buildingNumber} added!</p>

	<br />
	<form action="/webNotebook2/AddServlet">
		<button type="submit">Back</button>
	</form>

	<br />
	<form action="/webNotebook2/StartServlet">
		<button type="submit">Start page</button>
	</form>


</body>
</html>
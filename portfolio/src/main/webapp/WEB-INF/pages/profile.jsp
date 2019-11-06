<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile Creation Portal</title>
</head>
<body>
	<div align="center">
		<h3>
			<a href="registerProfile">Profile Register</a>
		</h3>
		<table border="1">
		<tr>
			<th>id</th>
			<th>firstName</th>
			<th>lastName</th>
			<th>email</th>
			<th>mobileNumber</th>
			<th>about</th>
			</tr>
			<tr>
				<td>${Profile.id}</td>
				<td>${Profile.firstName}</td>
				<td>${Profile.lastName}</td>
				<td>${Profile.email}</td>
				<td>${Profile.mobileNumber}</td>
				<td>${Profile.about}</td>
				<td><a href="editProfile?id=${Profile.id}">Edit</a> <a
					href="deleteProfile?id=${Profile.id}">Delete</a></td>
			</tr>
		</table>
	</div>
</body>
</html>
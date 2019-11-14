<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>
<title>Portfolio</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<style>
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

body {
	font-family: 'Lato', 'Helvetica Neue', Helvetica, Arial, sans-serif;
}

h1, h2, h3, h4, h5, h6 {
	font-family: 'Lato', 'Helvetica Neue', Helvetica, Arial, sans-serif;
	font-weight: 700;
}

footer.footer {
	padding: 5px;
	margin-top: 5px;
	text-align: center;
	margin-top: 5px;
}

.formerror {
	color: red;
}
</style>

</head>

<body>
	<div class="container-fluid bg-3">
		<h3>New/Edit Project</h3>
		<form:form action="saveProject" method="post" modelAttribute="Project">
		<form:select path="id" items="${WorkExpList}" />
			<div class="form-row">
				<div class="form-group col-md-4">
					<label>projectName</label>
					<form:input path="projectName" class="form-control"
						placeholder="projectName" />
					<form:errors path="projectName" class="formerror" />
				</div>
				<div class="form-group col-md-4">
					<label>fromDate</label>
					<form:input type="date"  path="fromDate" class="form-control" placeholder="fromDate :2011-08-01" />
					<form:errors path="fromDate" class="formerror" />
				</div>
				<div class="form-group col-md-4">
					<label>ToDate</label>
					<form:input type="date" path="ToDate" class="form-control"
						placeholder="ToDate" />
					<form:errors path="ToDate" class="formerror" />
				</div>
				</div>
			<div class="textarea">
				<label>Projectdesc</label>
				<form:textarea path="desc" class="form-control"
					placeholder="Project Desc" />
				<form:errors path="desc" class="formerror" />
			</div>
			<div class="textarea">
				<label>Pro tasks</label>
				<form:textarea path="tasks" class="form-control" rows="6"
					cols="30"
					placeholder="Project tasks" />
				<form:errors path="tasks" class="formerror" />
			</div>
			<input type="submit" value="Save">
		</form:form>
	</div>

</body>
</html>
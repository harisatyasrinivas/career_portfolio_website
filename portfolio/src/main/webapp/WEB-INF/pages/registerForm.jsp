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
		<h3>New/Edit Profile</h3>
		<form:form action="saveProfile" method="post" modelAttribute="Profile">
			<!-- 		Responsive form for first, last names , email and mobile number fields -->
			<div class="form-row">
				<div class="form-group col-md-6">
					<label>Full Name</label>
					<form:input path="fullName" class="form-control"
						placeholder="Full Name" />
					<form:errors path="fullName" class="formerror" />
				</div>
				<div class="form-group col-md-6">
					<label>Nick Name</label>
					<form:input path="nickName" class="form-control"
						placeholder="Nick Name" />
					<form:errors path="nickName" class="formerror" />
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label>Email</label>
					<form:input path="email" class="form-control" placeholder="Email" />
					<form:errors path="email" class="formerror" />
				</div>
				<div class="form-group col-md-6">
					<label>Mobile Number</label>
					<form:input path="mobileNumber" class="form-control"
						placeholder="MobileNumber" />
					<form:errors path="mobileNumber" class="formerror" />
				</div>
			</div>
			<div class="form-group">
				<label>Status</label>
				<form:textarea path="status" class="form-control"
					placeholder="CurrentEmploymentStatus (ex: Actively Looking for Opportunity)" />
				<form:errors path="status" class="formerror" />
			</div>
			<div class="textarea">
				<label>Work Summary</label>
				<form:textarea path="summary" class="form-control" rows="6"
					cols="30"
					placeholder="Work Summary (few words about your role and feild)" />
				<form:errors path="summary" class="formerror" />
			</div>
			<div class="textarea">
				<label>My Story</label>
				<form:textarea path="story" class="form-control" rows="6"
					cols="30"
					placeholder="Your Story as a software developer" />
				<form:errors path="story" class="formerror" />
			</div>
			<input type="submit" value="Save">
		</form:form>
	</div>

</body>
</html>
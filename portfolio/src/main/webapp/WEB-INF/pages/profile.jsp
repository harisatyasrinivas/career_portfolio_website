<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
</style>

</head>
<body>

	<nav class="navbar navbar-expand-sm navbar-light"> <a
		class="navbar-brand" href="#"> <img src="img/Portfolio_Logo.jpg"
		width="30" height="30" class="d-inline-block align-top" alt="P">
		Portfolio
	</a>

	<button type="button" class="navbar-toggler bg-light"
		data-toggle="collapse" data-target="#nav">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse justify-content-between" id="nav">
		<ul class="nav navbar-nav">
			<li class="nav-link text-light font-weight-bold px-3"><a
				class="nav-link nav-link active" href="#">Home</a></li>
			<li class="nav-link text-light font-weight-bold px-3"><a
				class="nav-link" href="#">Experience</a></li>
			<li class="nav-link text-light font-weight-bold px-3"><a
				class="nav-link" href="#">Skills</a></li>
			<li class="nav-link text-light font-weight-bold px-3"><a
				class="nav-link" href="education/info?id=100">Education</a></li>
			<li class="nav-link text-light font-weight-bold px-3"><a
				class="nav-link" href="contact/info?id=100">Contact</a></li>
		</ul>
	</div>
	</nav>

	<header class="text-black text-center">
	<div class="jumbotron text-center">
		<h1>${Profile.firstName} ${Profile.lastName}</h1>
		<p>${Profile.status}</p>
	</div>
	</header>


	<div class="container">
		<h3>Summary of Qualifications</h3>
		<p>${Profile.summary}</p>
	</div>

	<div class="container">
		<h3>Work Experience</h3>
		<p><b>${WorkExp.company}</b><p>
		<p>${WorkExp.role}</p>
	</div>


	<div class="container bg-3 ">
		<h3>Skills</h3>
		<br>
	</div>
	<div class="container-fluid bg-3 text-center">
		<div class="row">
			<c:forEach var="skill" items="${SkillsList}">
				<div class="col-sm-4">
					<h3>${skill.skill}</h3>
					<p>${skill.skillExperience}Years</p>
				</div>
			</c:forEach>
		</div>
	</div>
	<br>
	<br>
	<br>
</body>

	<footer class="footer">
	<div class="container">
		<p>Portfolio Design, Copyright &copy; 2019</p>
	</div>
	</footer>


</html>
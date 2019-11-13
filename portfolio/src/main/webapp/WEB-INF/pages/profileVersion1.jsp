<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
<title>Portfolio</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="<spring:url value="/css/mystyle.css" />" rel="stylesheet"
	type="text/css" />

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
		<h1>${Profile.firstName}${Profile.lastName}</h1>
		<p>${Profile.status}</p>
		<a href="editProfile?id=${Profile.id}"> edit profile</a>
	</div>
	</header>

	<div class="container">
		<h3>Summary of Qualifications</h3>
		<p>${Profile.summary}</p>
		<h1 id="title" class="color1">Spring MVC- Static Resource Mapping
			Example</h1>

		<button onclick="changeColor()">Change Color</button>
		<hr />
	</div>


	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h4>Work Experience</h4>
				<c:forEach var="work" items="${WorkExpList}">
					<ul class="timeline">
						<li>
							<p class="float-left">${work.toDate}</p> <br> <br>
							<h6>${work.company}</h6>
							<p class="captions">${work.role}</p> <c:forEach var="project"
								items="${ProjectList}">
								<ul>
									<li>
										<p class="float-right">${project.toDate}</p>
										<h6>${project.projectName}</h6>
										<p>
											<i>${project.desc}</i>
										</p>
										<p class="captions">${project.tasks}</p>
									</li>
								</ul>
							</c:forEach>
						</li>
					</ul>
				</c:forEach>
			</div>
		</div>
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
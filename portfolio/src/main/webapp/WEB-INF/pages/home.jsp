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



<body data-spy="scroll" data-target=".navbar" data-offset="50">
	<!-- 	Jumbotron for displaying Name , Role and Status -->
	<section id="mynavbar"> <nav
		class="navbar navbar-expand-sm navbar-light fixed-top"> <a
		class="navbar-brand" href="#"> <img
		src="<spring:url value="/images/Portfolio_Logo.jpg" />" width="30"
		height="30" class="d-inline-block align-top" alt="P">Portfolio
	</a>
	<button type="button" class="navbar-toggler" data-toggle="collapse"
		data-target="#nav">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse justify-content-between" id="nav">
		<ul class="navbar-nav">
			<li class="nav-link text-light font-weight-bold px-3"><a
				class="nav-link nav-link active" href="#Home">Home</a></li>
			<li class="nav-link text-light font-weight-bold px-3"><a
				class="nav-link" href="#Experience">Experience</a></li>
			<li class="nav-link text-light font-weight-bold px-3"><a
				class="nav-link" href="#Skills">Skills</a></li>
			<li class="nav-link text-light font-weight-bold px-3"><a
				class="nav-link" href="#Education">Education</a></li>
			<li class="nav-link text-light font-weight-bold px-3"><a
				class="nav-link" href="#Contact">Contact</a></li>
		</ul>
	</div>
	</nav> </section>
	<br>

	<div id="Home" class="jumbotron">
		<div class="card">
			<div class="card-body">
				<div class="row">
					<div class="col-sm-8">
						<h5 class="card-title">${Profile.firstName}
							${Profile.lastName}</h5>
						<p class="card-text">${Profile.status}</p>
						<p class="card-text">Ottawa , Canada</p>
					</div>
					<div class="col-sm-4">
						<div class="card-body">

							<p class="card-text">
								<img
									src="https://img.icons8.com/color/30/000000/student-male--v2.png">
								University of Ottawa
							</p>
							<p class="card-text">
								<img
									src="https://img.icons8.com/color/30/000000/client-company.png">Polaris
								Consultancy and services
							</p>
							<a href="https://www.linkedin.com/in/hari-satya-srinivas-dasari/"
								target="_blank"> <img
								src="https://img.icons8.com/color/30/000000/linkedin.png">
							</a> <a href="https://github.com/harisatyasrinivas" target="_blank"> <img
								src="https://img.icons8.com/color/30/000000/github--v1.png">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br>

		<!-- 	container for diplaying image and mystory -->
		<div id="mystory" class=" row">
			<div class="col-sm-8">
				<h5 class="card-title">My Story</h5>
				<blockquote class="blockquote text-right">
					<p class="mb-0">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit. Integer posuere erat a ante.</p>
					<footer class="blockquote-footer">Satya Dasari</footer>
				</blockquote>
			</div>
			<div class="col-sm-3">
				<div class="circular--portrait float-right">
					<img src="<spring:url value="/images/MyProfilePic.jpg" />" />
				</div>
			</div>
		</div>


		<br>

		<div class="row text-center"">
			<div class="col-sm-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Design</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>
						<a href="#" class="btn btn-primary">Skills</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Development</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>
						<a href="#" class="btn btn-primary">Skills</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Support</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>
						<a href="#" class="btn btn-primary">Skills</a>
					</div>
				</div>
			</div>
		</div>


		<div id="Skills">
			<div class="container bg-3">
				<h3>Skills</h3>
				<br>
			</div>
			<div class="container-fluid bg-3 text-center">
				<div class="row">
					<c:forEach var="skill" items="${SkillsList}">
						<div class="col-sm-1">
							<button type="button" class="btn btn-primary">Primary</button>
						</div>
						<div class="col-sm-1">
							<button type="button" class="btn btn-secondary">Secondary</button>
						</div>
						<div class="col-sm-1">
							<button type="button" class="btn btn-success">Success</button>
						</div>
						<div class="col-sm-1">
							<button type="button" class="btn btn-danger">Danger</button>
						</div>
						<button type="button" class="btn btn-warning">Warning</button>
						<div class="col-sm-1">
							<button type="button" class="btn btn-info">Info</button>
						</div>
						<div class="col-sm-1">
							<a href="#" class="btn btn-primary">${skill.skill}</a>
							<p>${skill.skillExperience}Years</p>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
</body>

<div id="Experience" class="card">
	<div class="card-body">
		<h5 class="card-title">Work Experience</h5>
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
<br>
<div id="Education" class="row text-center"">
	<div class="col-sm-6">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">University of Ottawa</h5>
				<p class="card-text">With supporting text below as a natural
					lead-in to additional content.</p>
				<a href="#" class="btn btn-primary">Skills</a>
			</div>
		</div>
	</div>
	<div class="col-sm-6">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">GMR Insitute of technology</h5>
				<p class="card-text">With supporting text below as a natural
					lead-in to additional content.</p>
				<a href="#" class="btn btn-primary">Skills</a>
			</div>
		</div>
	</div>
</div>

<br>

<footer class="footer">
<div class="socialbar">
	<div class="container">
		<p>Portfolio Design, Copyright &copy; 2019</p>
	</div>
</div>
</footer>



</html>
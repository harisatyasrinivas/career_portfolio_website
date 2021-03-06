<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


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

<link href="<spring:url value="/css/mystyle.css" />"
	rel="stylesheet" type="text/css" />
	
</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-light"> <a
		class="navbar-brand" href="#"> <img alt="P"
		src="<spring:url value="/images/Portfolio_Logo.jpg" />" width="30"
		height="30" class="d-inline-block align-top"> Portfolio
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

	<section> <header class="text-black text-center">
	<div class="jumbotron text-center">
		<h1>HARI SATYA SRINIVAS DASARI</h1>
		<p>About : Actively looking for Full Time Opportunity || Graduated
			from UOttawa with 2.4 Year experience as Software Engineer</p>
	</div>
	</header> </section>

	<section>
	<div class="container">
		<h3>Summary of Experience</h3>
		<p>Lorem Ipsum is simply dummy text of the printing and
			typesetting industry. Lorem Ipsum has been the industry's standard
			dummy text ever since the 1500s, when an unknown printer took a
			galley of type and scrambled it to make a type specimen book. It has
			survived not only five centuries, but also the leap into electronic
			typesetting, remaining essentially unchanged. It was popularised in
			the 1960s with the release of Letraset sheets containing Lorem Ipsum
			passages, and more recently with desktop publishing software like
			Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is
			simply dummy text of the printing and typesetting industry. Lorem
			Ipsum has been the industry's standard dummy text ever since the
			1500s, when an unknown printer took a galley of type and scrambled it
			to make a type specimen book. It has survived not only five
			centuries, but also the leap into electronic typesetting, remaining
			essentially unchanged. It was popularised in the 1960s with the
			release of Letraset sheets containing Lorem Ipsum passages, and more
			recently with desktop publishing software like Aldus PageMaker
			including versions of Lorem Ipsum.</p>
	</div>
	</section>

	<div class="container bg-3 ">
		<h3>Skills</h3>
		<br>
	</div>
	<div class="container-fluid bg-3 text-center">
		<div class="row">
			<div class="col-sm-3">
				<h3>Java</h3>
				<p>Some text..</p>
			</div>
			<div class="col-sm-3">
				<h3>Java</h3>
				<p>Some text..</p>
			</div>
			<div class="col-sm-3">
				<h3>Java</h3>
				<p>Some text..</p>
			</div>
			<div class="col-sm-3">
				<h3>Java</h3>
				<p>Some text..</p>
			</div>
		</div>
	</div>
	<br>

	<div class="container-fluid bg-3 text-center">
		<div class="row">
			<div class="col-sm-3">
				<h3>Java</h3>
				<p>Some text..</p>
			</div>
			<div class="col-sm-3">
				<h3>Java</h3>
				<p>Some text..</p>
			</div>
			<div class="col-sm-3">
				<h3>Java</h3>
				<p>Some text..</p>
			</div>
			<div class="col-sm-3">
				<h3>Java</h3>
				<p>Some text..</p>
			</div>
		</div>
	</div>
	<br>
	<br>


	<footer class="footer">
	<div class="container">
		<p>Portfolio Design, Copyright &copy; 2019</p>
	</div>
	</footer>

</body>
</html>
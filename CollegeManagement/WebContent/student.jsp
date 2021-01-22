<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body, html {
	height: 100%;
	margin: 0;
}

.bg {
	/* The image used */
	background-image: url("background.jpg");
	/* Full height */
	height: 100%;
	/* Center and scale the image nicely */
	background-position: center;
	background-repeat: repeat;
	background-size: cover;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body class="bg">

	<nav class="navbar navbar-expand-sm bg-secondary navbar-dark">

		<a class="" href="student_home.jsp"><img src="logo.jpg" alt="logo"
			style="width: 50px; height: 50px;"></a>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link" href="student_home.jsp">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="student_update_profile.jsp">Profile</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> Placement Info </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="add_placement.jsp">Add
						Placement</a> <a class="dropdown-item" href="view_placement.jsp">View Placement</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> Internship </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="add_internship.jsp">Add Internship</a> <a
						class="dropdown-item" href="view_internship.jsp">View Internship</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> Event Participation </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="add_event.jsp">Add Event</a> <a
						class="dropdown-item" href="view_event.jsp">View Event</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> Year Wise Scores </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="add_scores.jsp">Add Score</a> <a
						class="dropdown-item" href="view_scores.jsp?year=I">1st year score</a> <a
						class="dropdown-item" href="view_scores.jsp?year=II">2nd year score</a> <a
						class="dropdown-item" href="view_scores.jsp?year=III">3rd year score</a> <a
						class="dropdown-item" href="view_scores.jsp?year=IV">4th year score</a> <a
						class="dropdown-item" href="view_scores.jsp">All year score</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="index.jsp">Logout</a></li>
		</ul>

	</nav>

</body>
</html>
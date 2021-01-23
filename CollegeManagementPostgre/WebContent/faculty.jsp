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

		<a class="" href="faculty_home.jsp"><img src="logo.jpg" alt="logo"
			style="width: 50px; height: 50px;"></a>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link" href="faculty_home.jsp">Home</a></li>
			<li class="nav-item"><a class="nav-link"
				href="faculty_update_profile.jsp">Update Profile</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> Seminar Info </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="add_seminar.jsp">Add Seminar</a> <a
						class="dropdown-item" href="view_seminar.jsp">View Seminar</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> Paper Publication </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="add_paper_publication.jsp">Add
						Paper Publication</a> <a class="dropdown-item"
						href="view_paper_publication.jsp">View Paper Publication</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> Faculty Achievements </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="add_achievements.jsp">Add
						Achivements</a> <a class="dropdown-item" href="view_achievements.jsp">View
						Achivements</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> Guest Lecture Info </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="add_guest_lecture.jsp">Add Guest
						Lecture</a> <a class="dropdown-item" href="view_guest_lecture.jsp">View
						Guest Lecture</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="index.jsp">Logout</a></li>
		</ul>

	</nav>

</body>
</html>
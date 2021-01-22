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

		<a class="" href="admin_home.jsp"><img src="logo.jpg" alt="logo"
			style="width: 50px; height: 50px;"></a>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link" href="admin_home.jsp">Home</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> Views </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="admin_view_paper_publication.jsp">View
						Paper Publication</a> <a class="dropdown-item"
						href="admin_view_seminar.jsp">View Seminar</a> <a
						class="dropdown-item" href="admin_view_achievements.jsp">View
						Faculty Achivements</a><a class="dropdown-item"
						href="admin_view_guest_lecture.jsp">View Guest Lecture</a> <a
						class="dropdown-item" href="admin_view_placement.jsp">View
						Placement</a> <a class="dropdown-item"
						href="admin_view_internship.jsp">View Internship</a><a
						class="dropdown-item" href="admin_view_event.jsp">View Event</a><a
						class="dropdown-item" href="admin_view_scores.jsp">Year Wise
						Score</a>
				</div></li>
			<li class="nav-item"><a class="nav-link"
				href="manage_student.jsp">Manage Student</a></li>
			<li class="nav-item"><a class="nav-link"
				href="manage_faculty.jsp">Manage Faculty</a></li>

			<li class="nav-item"><a class="nav-link" href="index.jsp">Logout</a></li>
		</ul>

	</nav>

</body>
</html>
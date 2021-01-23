<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<%@include file="main.html"%>
	<h1 align="center">Welcome to Faculty Register Page</h1>
	<br>
	<div class="container-fulid">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="./faculty_register" method="post">
							<div class="form-group">
								FirstName: <input type="text" name="firstname"
									class="form-control" placeholder="Enter First Name"
									required="required">
							</div>
							<div class="form-group">
								LastName: <input type="text" name="lastname"
									class="form-control" placeholder="Enter last Name"
									required="required">
							</div>
							<div class="form-group">
								Email: <input type="email" class="form-control" name="email"
									placeholder="Enter Email" required="required">
							</div>
							<div class="form-group">
								Password: <input type="password" class="form-control"
									name="password" placeholder="Enter Password"
									required="required">
							</div>
							<div class="form-group">
								Subject: <input type="text" class="form-control" name="subject"
									placeholder="Enter Subject" required="required">
							</div>
							<div class="form-group">
								Department: <select name="department" class="form-control">
									<option value="CSE">CSE</option>
									<option value="ECE">ECE</option>
									<option value="EEE">EEE</option>
									<option value="MECH">MECH</option>
									<option value="CIVIL">CIVIL</option>
									<option value="IT">IT</option>
								</select>
							</div>
							<center>
								<input type="submit" class="btn btn-primary" value="register"><br>
								<br> <b>Already Registered?</b> <a href="faculty_login.jsp"
									class="btn btn-primary">Login</a>
							</center>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
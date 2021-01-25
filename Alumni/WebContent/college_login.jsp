<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<%@include file="main.html" %>
<h1 align="center">Welcome to College Login Page</h1><br>
<div class="container-fulid">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="./college_login" method="post">
							
							<div class="form-group">
								Email: <input type="email" class="form-control" name="email" placeholder="Enter Email" required="required">
							</div>
							<div class="form-group">
								Password: <input type="password" class="form-control" name="password" placeholder="Enter Password" required="required">
							</div>							
							<center><input type="submit" class="btn btn-primary" value="Login"><br>
							<br>
							<b>New Student?</b> <a href="college_register.jsp" class="btn btn-primary">Sign Up</a>
							</center>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
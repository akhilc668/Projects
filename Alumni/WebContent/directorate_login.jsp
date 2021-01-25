<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<%@include file="main.html" %>
<h1 align="center">Welcome to Directorate Login Page</h1><br>
<div class="container-fulid">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="./directorate_login" method="post">
							
							<div class="form-group">
								Username: <input type="text" class="form-control" name="username" placeholder="Enter Username" required="required">
							</div>
							<div class="form-group">
								Password: <input type="password" class="form-control" name="password" placeholder="Enter Password" required="required">
							</div>							
							<input type="submit" class="btn btn-primary" value="Login"><br>	
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<%@include file="directorate.jsp" %>
<h1 align="center">Welcome to Add Event Page</h1>
<br>
<div class="container-fulid">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="./add_event" method="post" enctype = "multipart/form-data">
							
							<div class="form-group">
								<label>Event Name:</label> <input type="text" class="form-control" name="eventname" placeholder="Enter Event name" required="required">
							</div>
							<div class="form-group">
								<label>Topic:</label> <input type="text" class="form-control" name="topic" placeholder="Enter Topic" required="required">
							</div>
							<div class="form-group">
								<label>Date:</label> <input type="date" class="form-control" name="date" placeholder="Enter Date" required="required">
							</div>
							<div class="form-group">
								<label>Choose File(Image/Docs/PDF)</label><input type = "file" name = "file" required="required">
							</div> 
							<center><input type="submit" class="btn btn-primary" value="Add">
							</center>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
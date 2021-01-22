<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<%@include file="faculty.jsp" %>
<h1 align="center">Welcome to Add Seminar Page</h1>
<br>
<%@page import="com.pojo.faculty.Faculty" %>
<%Faculty f=(Faculty)session.getAttribute("faculty");
String name=f.getFirstname()+" "+f.getLastname();
%>
<div class="container-fulid">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="./add_seminar" method="post">
							<div class="form-group">
								Department: <input type="text" name="department" class="form-control" value="<%=f.getDepartment()%>" readonly="readonly">
							</div>
							<div class="form-group">
								Name: <input type="text" name="name"
									class="form-control" value="<%=name%>" readonly="readonly">
							</div>
							<div class="form-group">
								Position: <input type="text" class="form-control" name="position" value="<%=f.getDesignation()%>" readonly="readonly">
							</div>
							<div class="form-group">
								Format: <input type="radio"  name="format" required="required" value="lecture">Lecture
								<input type="radio"  name="format" required="required" value="seminar">Seminar
							</div>
							<div class="form-group">
								Date: <input type="date" class="form-control" name="date" placeholder="Enter the place of seminar" required="required">
							</div>
							<div class="form-group">
								Topic: <input type="text" class="form-control" name="topic" placeholder="Enter the topic" required="required">
							</div>
							<div class="form-group">
								Place of Seminar: <input type="text" class="form-control" name="place_of_seminar" placeholder="Enter the place of seminar" required="required">
							</div>
							
							<input type="hidden" name="fid" value="<%=f.getId()%>" readonly="readonly">
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
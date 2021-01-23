<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<%@include file="student.jsp"%>
	<h1 align="center">Welcome to Add Placement Page</h1>
	<%@page import="com.pojo.student.Student"%>
	<%Student s=(Student)session.getAttribute("student"); 
String name=s.getFirstname()+" "+s.getLastname();
%>
	<br>
	<div class="container-fulid">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="./add_placement" method="post">
							<div class="form-group">
								Department: <input type="text" name="department"
									class="form-control" value="<%=s.getDepartment() %>"
									readonly="readonly">
							</div>
							<div class="form-group">
								Name: <input type="text" name="name" class="form-control"
									value="<%=name %>" readonly="readonly">
							</div>
							<div class="form-group">
								Roll number: <input type="text" class="form-control"
									name="rollnumber" value="<%=s.getRollnumber()%>"
									readonly="readonly">
							</div>
							<div class="form-group">
								Company Name: <input type="text" class="form-control"
									name="companyname" placeholder="Enter Comapny name"
									required="required">
							</div>
							<div class="form-group">
								package: <input type="number" class="form-control"
									name="package" placeholder="Enter Package" required="required">
							</div>
							<input type="hidden" name="studid" value="<%=s.getStudent_id()%>">
							<center>
								<input type="submit" class="btn btn-primary" value="Add">
							</center>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
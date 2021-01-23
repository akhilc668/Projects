<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<%@include file="student.jsp"%>
	<h1 align="center">Welcome to Add Score Page</h1>
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
						<form action="./add_score" method="post">
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
								Year: <select name="year" class="form-control">
									<option value="I">I</option>
									<option value="II">II</option>
									<option value="III">III</option>
									<option value="IV">IV</option>
								</select>
							</div>
							<div class="form-group">
								Semester: <select name="semester" class="form-control">
									<option value="I-I">I-I</option>
									<option value="I-II">I-II</option>
									<option value="II-I">II-I</option>
									<option value="II-II">II-II</option>
									<option value="III-I">III-I</option>
									<option value="III-II">III-II</option>
									<option value="IV-I">IV-I</option>
									<option value="IV-II">IV-II</option>
								</select>
							</div>
							<div class="form-group">
								percentage: <input type="number" class="form-control" step="any"
									name="percentage" placeholder="Enter Precentage"
									required="required">
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
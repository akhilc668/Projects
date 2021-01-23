<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="student.jsp"%>
	<h1 align="center">Welcome to Student Update Profile Page</h1>
	<%@page import="com.pojo.student.Student"%>
	<%Student s=(Student)session.getAttribute("student");%>
	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="./student_update" method="post"
							enctype="multipart/form-data">
							<div class="form-group">
								FirstName: <input type="text" name="firstName"
									class="form-control" value="<%=s.getFirstname() %>"
									required="required">
							</div>
							<div class="form-group">
								LastName: <input type="text" name="lastName"
									class="form-control" value="<%=s.getLastname() %>"
									required="required">
							</div>
							<div class="form-group">
								Email: <input type="email" class="form-control" name="email"
									value="<%=s.getEmail() %>" required="required">
							</div>
							<div class="form-group">
								Phone: <input type="number" class="form-control" name="mobile"
									value="<%=s.getMobile() %>" required="required">
							</div>
							<div class="form-group">
								Roll Number: <input type="text" class="form-control"
									name="rollnumber" value="<%=s.getRollnumber() %>"
									required="required">
							</div>
							<div class="form-group">
								Department: <select name="department" class="form-control">
									<option value="<%=s.getDepartment()%>"><%=s.getDepartment() %></option>
									<option value="CSE">CSE</option>
									<option value="ECE">ECE</option>
									<option value="EEE">EEE</option>
									<option value="MECH">MECH</option>
									<option value="CIVIL">CIVIL</option>
									<option value="IT">IT</option>
								</select>
							</div>
							<div class="form-group">
								Address: <input type="text" class="form-control" name="address"
									value="<%=s.getAddress() %>" required="required">
							</div>
							<div class="form-group">
								Pincode: <input type="number" class="form-control"
									name="pincode" value="<%=s.getPincode() %>" required="required">
							</div>
							<div class="form-group">
								Nationality: <input type="text" class="form-control"
									name="nationality" value="<%=s.getNationality() %>"
									required="required">
							</div>
							<div class="form-group">
								Inter Percentage: <input type="number" step="any"
									class="form-control" name="inter"
									value="<%=s.getInter_percentage() %>" required="required">
							</div>
							<div class="form-group">
								SSC Percentage: <input type="number" step="any"
									class="form-control" name="ssc"
									value="<%=s.getSsc_percentage() %>" required="required">
							</div>
							<div class="form-group">
								<input type="file" name="file" required="required">
							</div>
							<input type="hidden" name="studid" value="<%=s.getStudent_id()%>">
							<input type="hidden" name="password" value="<%=s.getPassword()%>">
							<input type="submit" class="btn btn-primary" value="update">

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
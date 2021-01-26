<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="alumni.jsp" %>
<h1 align="center">Welcome to Alumni Update Profile Page</h1>
<%@page import="com.pojo.Alumni" %>
<%Alumni s=(Alumni)session.getAttribute("alumni");%>
<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="./alumni_update" method="post" enctype = "multipart/form-data">
							<div class="form-group">
								FirstName: <input type="text" name="firstName" class="form-control" value="<%=s.getFirstname() %>" required="required">
							</div>
							<div class="form-group">
								LastName: <input type="text" name="lastName"
									class="form-control" value="<%=s.getLastname() %>" required="required">
							</div>
							<div class="form-group">
								Email: <input type="email" class="form-control" name="email" value="<%=s.getEmail() %>" required="required">
							</div>
							<div class="form-group">
								Phone: <input type="number" class="form-control" name="mobile" value="<%=s.getMobile() %>" required="required">
							</div>
							<div class="form-group">
								Roll Number: <input type="text" class="form-control" name="rollnumber" value="<%=s.getRollnumber() %>" required="required">
							</div>
							<div class="form-group">
								College Name: <input type="text" class="form-control" name="collegename" value="<%=s.getCollegename() %>" readonly="readonly">
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
								Passed Out Year: <input type="text" class="form-control" name="year" value="<%=s.getYear() %>" readonly="readonly">
							</div>
							<div class="form-group">
								Address: <input type="text" class="form-control" name="address" value="<%=s.getAddress() %>" required="required">
							</div>
							<div class="form-group">
								Choose Image:<input type = "file" name = "file" required="required">
							</div> 
							<input type="hidden" name="studid" value="<%=s.getAid()%>">
							<input type="hidden" name="password" value="<%=s.getPassword()%>">
							<input type="hidden" name="status" value="<%=s.getStatus()%>">
							<input type="submit" class="btn btn-primary" value="update">
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="college.jsp"%>
	<%@page import="com.pojo.College"%>>
	<%
		College c = (College) session.getAttribute("college");
	%>
	<h1 align="center">Welcome to College Update Page</h1>
	<div class="container-fulid">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="./college_update" method="post">
							<div class="form-group">
								College Name: <input type="text" name="cname"
									class="form-control" placeholder="Enter college name"
									value="<%=c.getCname()%>" required="required">
							</div>
							<div class="form-group">
								College Code: <input type="text" name="ccode"
									class="form-control" placeholder="Enter college code"
									required="required" value="<%=c.getCollegecode()%>">
							</div>
							<div class="form-group">
								Email: <input type="email" class="form-control" name="email"
									placeholder="Enter Email" required="required"
									value="<%=c.getEmail()%>">
							</div>
							<div class="form-group">
								Location: <input type="text" class="form-control"
									name="location" placeholder="Enter location"
									required="required" value="<%=c.getLocation()%>">
							</div>
							<input type="hidden" name="cid" value="<%=c.getCid()%>">
							<input type="hidden" name="password" value="<%=c.getPassword()%>">
							<input type="hidden" name="status" value="<%=c.getStatus()%>">
							<center>
								<input type="submit" class="btn btn-primary" value="update">
							</center>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
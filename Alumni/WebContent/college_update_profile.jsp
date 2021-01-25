<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="college.jsp" %>
<h1>Welcome to College Update Page</h1>
<div class="container-fulid">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="./college_update" method="post" enctype = "multipart/form-data">
							<%-- <div class="form-group">
								FirstName: <input type="text" name="firstname" class="form-control" placeholder="Enter First Name" value="<%=f.getFirstname()%>" required="required">
							</div>
							<div class="form-group">
								LastName: <input type="text" name="lastname"
									class="form-control" placeholder="Enter last Name" required="required" value="<%=f.getLastname()%>">
							</div>
							<div class="form-group">
								Email: <input type="email" class="form-control" name="email" placeholder="Enter Email" required="required" value="<%=f.getEmail()%>">
							</div>
							<div class="form-group">
								Subject: <input type="text" class="form-control" name="subject" placeholder="Enter Subject" required="required" value="<%=f.getSubject()%>">
							</div>
							<div class="form-group">
								Department: <input type="text" class="form-control" name="department" placeholder="Enter Department" required="required" value="<%=f.getDepartment()%>">
							</div>
							<div class="form-group">
								Designation: <input type="text" class="form-control" name="designation" placeholder="Enter designation" required="required" value="<%=f.getDesignation()%>">
							</div>
							<div class="form-group">
								Twitter: <input type="text" class="form-control" name="twitter" placeholder="Enter twittwe" required="required" value="<%=f.getTwitter()%>">
							</div>
							<div class="form-group">
								Linkedin: <input type="text" class="form-control" name="linkedin" placeholder="Enter linkedin" required="required" value="<%=f.getLinkedin()%>">
							</div>
							<div class="form-group">
								Facebook: <input type="text" class="form-control" name="facebook" placeholder="Enter facebook" required="required" value="<%=f.getFacebook()%>">
							</div>
							<div class="form-group">
								Choose Image<input type = "file" name = "file" required="required">
							</div> 
							<input type="hidden" name="fid" value="<%=f.getId()%>">
							<input type="hidden" name="password" value="<%=f.getPassword()%>">
							<center><input type="submit" class="btn btn-primary" value="update"> --%>
							</center>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
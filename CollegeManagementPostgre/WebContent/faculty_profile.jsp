<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#profile {
	width: 100px;
	height: 100px;
}
</style>
</head>
<body>
	<%@include file="admin.jsp"%>
	<%@page import="com.pojo.faculty.Faculty,com.admin.ManageFacultyBean"%>
	<h1 align="center">Welcome to Faculty Profile Page</h1>
	<%
		int id=Integer.parseInt(request.getParameter("id"));
		Faculty f=ManageFacultyBean.getFacultyById(id);
	String image = getServletContext().getInitParameter("file-download") + "" + f.getPicture();
	%>


	<div class="container">
		<table class="table table-bordered table-info">
			<tr>
				<td>Profile</td>
				<td><img src="<%=image%>" id="profile"></td>
			</tr>
			<tr>
				<td>First Name:</td>
				<td><%=f.getFirstname()%></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><%=f.getLastname()%></td>
			</tr>
			<tr>
				<td>Eamil</td>
				<td><%=f.getEmail()%></td>
			</tr>
			<tr>
				<td>Subject</td>
				<td><%=f.getSubject()%></td>
			</tr>
			<tr>
				<td>Department</td>
				<td><%=f.getDepartment()%></td>
			</tr>
			<tr>
				<td>Designation</td>
				<td><%=f.getDesignation()%></td>
			</tr>
			<tr>
				<td>Twitter</td>
				<td><%=f.getTwitter()%></td>
			</tr>
			<tr>
				<td>Linkedin</td>
				<td><%=f.getLinkedin()%></td>
			</tr>
			<tr>
				<td>Facebook</td>
				<td><%=f.getFacebook()%></td>
			</tr>
		</table>
	</div>
</body>
</html>
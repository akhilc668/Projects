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
	<%@include file="directorate.jsp"%>
	<%@page import="com.pojo.College,com.directorate.ManageCollegeBean"%>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
	College c = ManageCollegeBean.getCollegeById(id);
	%>
	<h1 align="center">Welcome to College Profile Page</h1>
	<div class="container">
		<table class="table table-bordered table-info">
			<tr>
				<td>College Name:</td>
				<td><%=c.getCname()%></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><%=c.getEmail()%></td>
			</tr>
			<tr>
				<td>College Code:</td>
				<td><%=c.getCollegecode()%></td>
			</tr>
			<tr>
				<td>Location:</td>
				<td><%=c.getLocation()%></td>
			</tr>
		</table>
	</div>
</body>
</html>
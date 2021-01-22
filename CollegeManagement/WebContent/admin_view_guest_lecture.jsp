<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="admin.jsp"%>
	<%@page
		import="com.pojo.faculty.GuestLecture,com.admin.ViewBean,java.util.*"%>

	<h1 align="center">Welcome to View Guest Lecture Page</h1>

	<div id="right" class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Faculty Name</td>
					<td>Department</td>
					<td>Position</td>
					<td>Topic</td>
					<td>Date</td>
					<td>Faculty Profile</td>
					<td>Description</td>
				</tr>
			</thead>
			<%
			List li = ViewBean.getLecture();
			Iterator i = li.iterator();
			while (i.hasNext()) {
				GuestLecture s = (GuestLecture) i.next();
			%>
			<tr>
				<td><%=s.getName()%></td>
				<td><%=s.getDepartment()%></td>
				<td><%=s.getPosition()%></td>
				<td><%=s.getTopic()%></td>
				<td><%=s.getDate_of_event()%></td>
				<td><%=s.getProfile_of_guest_faculty()%></td>
				<td><%=s.getDescription_of_event()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
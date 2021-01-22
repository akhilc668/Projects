<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Seminar</title>
</head>
<body>
	<%@include file="faculty.jsp"%>
	<%@page
		import="com.pojo.faculty.Seminar,com.faculty.SeminarBean,java.util.*"%>
	<h1 align="center">Welcome to View Seminar Page</h1>
	<div id="right" class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Seminar ID</td>
					<td>Faculty Name</td>
					<td>Department</td>
					<td>Date</td>
					<td>Position</td>
					<td>Topic</td>
					<td>Place of Seminar</td>
					<td>Type of Seminar</td>
				</tr>
			</thead>
			<%
				int fid = (Integer) session.getAttribute("fid");

			List li = SeminarBean.getSeminarById(fid);
			Iterator i = li.iterator();
			while (i.hasNext()) {
				Seminar s = (Seminar) i.next();
			%>

			<tr>
				<td><%=s.getId()%></td>
				<td><%=s.getName()%></td>
				<td><%=s.getDepartment()%></td>
				<td><%=s.getDate()%></td>
				<td><%=s.getPosition()%></td>
				<td><%=s.getTopic()%></td>
				<td><%=s.getPlace_of_seminar()%></td>
				<td><%=s.getFormat()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>

</body>
</html>
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
	<%@page
		import="com.pojo.student.CollegeEvent,com.student.CollegeEventBean,java.util.*"%>
	<h1 align="center">Welcome to View Event Page</h1>
	<div class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Student Name</td>
					<td>Department</td>
					<td>Roll Number</td>
					<td>Event Name</td>
					<td>Topic</td>
					<td>File Download</td>
				</tr>
			</thead>
			<%
				int studid = (Integer) session.getAttribute("studid");
			String path = getServletContext().getInitParameter("file-download");
			List li = CollegeEventBean.getEventsById(studid);
			Iterator i = li.iterator();
			while (i.hasNext()) {
				CollegeEvent ce = (CollegeEvent) i.next();
				String file = path + ce.getFilename();
				System.out.println(file);
			%>
			<tbody>
				<tr>
					<td><%=ce.getName()%></td>
					<td><%=ce.getDepartment()%></td>
					<td><%=ce.getRollnumber()%></td>
					<td><%=ce.getEventname()%></td>
					<td><%=ce.getTopic()%></td>
					<td><a href="<%=file%>" download>Download</a></td>
				</tr>
			</tbody>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
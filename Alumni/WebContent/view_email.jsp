<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String pages = request.getParameter("page");
	if (pages.equals("alumni")) {
	%>
	<%@include file="alumni.jsp"%>
		<h1 align="center">Welcome to Alumni View Emails Page</h1>
	<%
		} else if (pages.equals("college")) {
	%>
	<%@include file="college.jsp"%>
		<h1 align="center">Welcome to College View Emails Page</h1>
	<%
		} else {
	%>
	<%@include file="directorate.jsp"%>
		<h1 align="center">Welcome to Directorate View Emails Page</h1>
	<%
		}
	%>
	<%@page import="com.pojo.Events,java.util.*"%>
	<div class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>From</td>
					<td>Subject</td>
					<td>View</td>
				</tr>
			</thead>
			<%
				String path = getServletContext().getInitParameter("file-download");
			/* int studid = (Integer) session.getAttribute("studid");
			List li = CollegeEventBean.getEventsById(studid);
			Iterator i = li.iterator();
			while (i.hasNext()) {
			CollegeEvent ce = (CollegeEvent) i.next(); */
			Events ce = new Events();
			String file = path + ce.getFilename();
			System.out.println(file);
			{
			%>
			<tbody>
				<tr>
					<td><%=ce.getEid()%></td>
					<td><%=ce.getDate()%></td>
					<td><a href="show_email?id=<%=ce.getEid()%>">Show Content</a></td>
				</tr>
			</tbody>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
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
	<%
		} else if (pages.equals("college")) {
	%>
	<%@include file="college.jsp"%>
	<%
		} else {
	%>
	<%@include file="directorate.jsp"%>
	<%
		}
	%>
	<%@page import="com.pojo.Events,java.util.*"%>
	<h1 align="center">Welcome to View Emails Page</h1>
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
					<td><a href="show_email?id=<%=ce.getEid()%>">Show email</a></td>
				</tr>
			</tbody>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
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
	<%@page
		import="com.pojo.Events,java.util.*"%>
	<h1 align="center">Welcome to View Event Page</h1>
	<div class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Event Id</td>
					<td>Event Name</td>
					<td>Topic</td>
					<td>Date</td>
					<td>File Download</td>
				</tr>
			</thead>
			<%String path = getServletContext().getInitParameter("file-download");
				/* int studid = (Integer) session.getAttribute("studid");
			List li = CollegeEventBean.getEventsById(studid);
			Iterator i = li.iterator();
			while (i.hasNext()) {
				CollegeEvent ce = (CollegeEvent) i.next(); */
				Events ce=new Events();
				String file = path + ce.getFilename();
				System.out.println(file);{
			%>
			<tbody>
				<tr>
					<td><%=ce.getEid()%></td>
					<td><%=ce.getEname()%></td>
					<td><%=ce.getTopic()%></td>
					<td><%=ce.getDate() %></td>
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
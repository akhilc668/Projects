<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="admin.jsp" %>
<%@page import="com.pojo.student.Internship,com.admin.ViewBean,java.util.*" %>
	<h1 align="center">Welcome to View Internship Page</h1>
	<div id="right" class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Student Name</td>
					<td>Department</td>
					<td>Roll Number</td>
					<td>Topic</td>
					<td>Duration</td>
					<td>File Download</td>
				</tr>
			</thead>
			<%
			int studid=(Integer)session.getAttribute("studid");
			String path=getServletContext().getInitParameter("file-upload");
			List li=ViewBean.getInternship();
			Iterator i=li.iterator();
			while(i.hasNext()){
				Internship p=(Internship)i.next();
				String file=path+p.getFilename();
				System.out.println(file);
			%>
			<tbody>
				<tr>
					<td><%=p.getName() %></td>
					<td><%=p.getDepartment()%></td>
					<td><%=p.getRollnumber()%></td>
					<td><%=p.getTopic()%></td>
					<td><%=p.getDuration()%></td>
					<td><a href="<%=file%>" download>Download</a></td>
				</tr>
			</tbody>
			<%} %>
		</table>
	</div>
</body>
</html>
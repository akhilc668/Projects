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
<%@page import="com.pojo.student.StudentMarks,com.admin.ViewBean,java.util.*" %>
	<h1 align="center">Welcome to View Year Wise Marks Page</h1>
	<div id="right" class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Student Name</td>
					<td>Department</td>
					<td>Roll Number</td>
					<td>Year</td>
					<td>Semester</td>
					<td>Percentage</td>
				</tr>
			</thead>
			<%
			List li=ViewBean.getMarks();
			Iterator i=li.iterator();
			while(i.hasNext()){
				StudentMarks sm=(StudentMarks)i.next();
			%>
			<tbody>
				<tr>
					<td><%=sm.getName() %></td>
					<td><%=sm.getDepartment()%></td>
					<td><%=sm.getRollnumber()%></td>
					<td><%=sm.getYear()%></td>
					<td><%=sm.getSemester()%></td>
					<td><%=sm.getPercentage()%></td>
				</tr>
			</tbody>
			<%} %>
		</table>
	</div>
</body>
</html>
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
	<%@page import="com.pojo.student.Placement,com.admin.ViewBean,java.util.*" %>
	<h1 align="center">Welcome to View Placement Page</h1>
	<div id="right" class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Student Name</td>
					<td>Department</td>
					<td>Roll Number</td>
					<td>Company name</td>
					<td>Package</td>
				</tr>
			</thead>
			<%
			List li=ViewBean.getPlacement();
			Iterator i=li.iterator();
			while(i.hasNext()){
				Placement p=(Placement)i.next();
			%>
			<tbody>
				<tr>
					<td><%=p.getName() %></td>
					<td><%=p.getDepartment()%></td>
					<td><%=p.getRollNumber() %></td>
					<td><%=p.getCompanyName()%></td>
					<td><%=p.getSalary() %></td>
				</tr>
			</tbody>
			<%} %>
		</table>
	</div>
</body>
</html>
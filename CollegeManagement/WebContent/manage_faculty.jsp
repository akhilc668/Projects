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
	<h1 align="center">Welcome to Manage Faculty Page</h1>
	<%@page
		import="com.pojo.faculty.Faculty,com.admin.ManageFacultyBean,java.util.*"%>


	<div id="right" class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Faculty Id</td>
					<td>Faculty Name</td>
					<td>Action</td>
				</tr>
			</thead>
			<%
				List li = ManageFacultyBean.getFaculty();
			Iterator i = li.iterator();
			while (i.hasNext()) {
				Faculty f = (Faculty) i.next();
			%>
			<tbody>
				<tr>
					<td><%=f.getId()%>
					<td><%=f.getFirstname() + "" + f.getLastname()%></td>
					<td><a class="btn btn-primary"
						href="./faculty_profile.jsp?id=<%=f.getId()%>">View Faculty</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a
						class="btn btn-primary" href="./remove_faculty?id=<%=f.getId()%>">Remove</a>
				</tr>
			</tbody>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
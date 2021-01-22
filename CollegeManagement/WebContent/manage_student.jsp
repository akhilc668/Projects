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
	<h1 align="center">Welcome to Manage Student Page</h1>
	<%@page
		import="com.pojo.student.Student,com.admin.ManageStudentBean,java.util.*"%>


	<div id="right" class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Student Id</td>
					<td>Student Name</td>
					<td>Action</td>
				</tr>
			</thead>
			<%
				List li = ManageStudentBean.getStudent();
			Iterator i = li.iterator();
			while (i.hasNext()) {
				Student f = (Student) i.next();
			%>
			<tbody>
				<tr>
					<td><%=f.getStudent_id()%>
					<td><%=f.getFirstname() + "" + f.getLastname()%></td>
					<td><a class="btn btn-primary"
						href="./student_profile.jsp?id=<%=f.getStudent_id()%>">View
							Student</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a class="btn btn-primary"
						href="./remove_student?id=<%=f.getStudent_id()%>">Remove</a>
				</tr>
			</tbody>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
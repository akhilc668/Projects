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
	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">

			<form action="manage_student.jsp">
				<div class="form-group">
					<label>Enter First Name : </label> <input type="text"
						class="form-control" name="firstname"
						placeholder="Enter First name"> <label>Enter Last Name : </label> <input type="text"
						class="form-control" name="lastname"
						placeholder="Enter Last name"> <label>Enter
						Roll Number : </label> <input type="text" class="form-control"
						name="rollnumber" placeholder="Enter Roll number"> <br> <input
						type="submit" class="btn btn-primary" value="search"><br>
				</div>
			</form>

		</div>
	</div>

	<div id="right" class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Student Id</td>
					<td>Roll Number</td>
					<td>Student Name</td>
					<td>Action</td>
				</tr>
			</thead>
			<%
			String firstname=request.getParameter("firstname");
			String rollnumber=request.getParameter("rollnumber");
			String lastname=request.getParameter("lastname");
			List li=null;
			if(firstname==null&&lastname==null&&rollnumber==null||firstname.equals("")&&lastname.equals("")&&rollnumber.equals(""))
				 li = ManageStudentBean.getStudent();
			else
				li=ManageStudentBean.getStudents(firstname,lastname,rollnumber);
			Iterator i = li.iterator();
			while (i.hasNext()) {
				Student f = (Student) i.next();
			%>
			<tbody>
				<tr>
					<td><%=f.getStudent_id()%></td>
					<td><%=f.getRollnumber()%></td>
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
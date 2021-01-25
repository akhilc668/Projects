<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="directorate.jsp"%>
	<h1 align="center">Welcome to Manage Alumni Page</h1>
	<%@page import="com.pojo.Alumni,java.util.*"%>
	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-5">
				<div class="card">
					<div class="card-body">

						<form action="manage_alumni.jsp">
							<div class="form-group">
								<label>Enter College Name : </label> <input type="text"
									class="form-control" name="collegename"
									placeholder="Enter College name"> <label>Enter
									Deapartment : </label> <input type="text" class="form-control"
									name="department" placeholder="Enter Department"> <label>Enter
									Year : </label> <input type="text" class="form-control" name="year"
									placeholder="Enter Year"> <br> <input
									type="submit" class="btn btn-primary" value="search"><br>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="right" class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Alumni Id</td>
					<td>Roll Number</td>
					<td>Alumni Name</td>
					<td>College Name</td>
					<td>Department</td>
					<td>Year</td>
					<td>Action</td>
				</tr>
			</thead>
			<%
				String firstname = request.getParameter("firstname");
			String rollnumber = request.getParameter("rollnumber");
			String lastname = request.getParameter("lastname");
			List li = null;
			/* if(firstname==null&&lastname==null&&rollnumber==null||firstname.equals("")&&lastname.equals("")&&rollnumber.equals(""))
				 li = ManageStudentBean.getStudent();
			else
				li=ManageStudentBean.getStudents(firstname,lastname,rollnumber);
			Iterator i = li.iterator();
			while (i.hasNext()) {
				Student f = (Student) i.next(); */
			Alumni f = new Alumni();
			{
			%>
			<tbody>
				<tr>
					<td><%=f.getAid()%></td>
					<td><%=f.getRollnumber()%></td>
					<td><%=f.getFirstname() + "" + f.getLastname()%></td>
					<td><%=f.getCollegename()%></td>
					<td><%=f.getDepartment()%></td>
					<td><%=f.getYear()%></td>
					<td><a class="btn btn-primary"
						href="./alumni_profile.jsp?id=<%=f.getAid()%>">View Alumni</a></td>
				</tr>
			</tbody>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
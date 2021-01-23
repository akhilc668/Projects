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
	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">

			<form action="manage_faculty.jsp">
				<div class="form-group">
					<label>Enter First Name : </label> <input type="text"
						class="form-control" name="firstname"
						placeholder="Enter First name"> <label>Enter Last
						Name : </label> <input type="text" class="form-control" name="lastname"
						placeholder="Enter Last name"> <label>Enter
						Department : </label> <input type="text" class="form-control"
						name="department" placeholder="Enter Department"> <br>
					<input type="submit" class="btn btn-primary" value="search"><br>
				</div>
			</form>

		</div>
	</div>

	<div id="right" class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Faculty Id</td>
					<td>Faculty Name</td>
					<td>Department</td>
					<td>Action</td>
				</tr>
			</thead>
			<%
			String firstname=request.getParameter("firstname");
			String department=request.getParameter("department");
			String lastname=request.getParameter("lastname");
			List li=null;
			if(firstname==null&&lastname==null&&department==null||firstname.equals("")&&lastname.equals("")&&department.equals(""))
				li = ManageFacultyBean.getFaculty();
		
			else
				li=ManageFacultyBean.searchFaculty(firstname,lastname,department);
							 
			Iterator i = li.iterator();
			while (i.hasNext()) {
				Faculty f = (Faculty) i.next();
			%>
			<tbody>
				<tr>
					<td><%=f.getId()%>
					<td><%=f.getFirstname() + "" + f.getLastname()%></td>
					<td><%=f.getDepartment()%></td>
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
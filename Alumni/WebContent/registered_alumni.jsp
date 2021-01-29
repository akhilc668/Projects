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
	<h1 align="center">Welcome to Registered Alumni Page</h1>
	<%@page
		import="com.pojo.Alumni,java.util.*, com.college.CollegeAlumniBean"%>
	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 38vh">
			<div class="col-5">
				<div class="card">
					<div class="card-body">
						<form action="registered_alumni.jsp">

							<div class="form-group">
								<label>Enter Department : </label> <input type="text"
									class="form-control" name="department"
									placeholder="Enter Department"> <label>Enter
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
				String department = request.getParameter("department");
			String year = request.getParameter("year");
			String cname = (String) session.getAttribute("cname");
			List li = null;
			if (department == null && year == null || department.equals("") && year.equals(""))
				li = CollegeAlumniBean.getRegisteredAlumni(cname);
			else {
				int year1 = Integer.parseInt(year);
				li = CollegeAlumniBean.getAlumni(department, year1, cname);
			}
			Iterator i = li.iterator();
			while (i.hasNext()) {
				Alumni f = (Alumni) i.next();
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
					<td>
						<%
							if (f.getStatus().equals("none")) {
						%> <a class="btn btn-primary"
						href="./accept_alumni?id=<%=f.getAid()%>">Accept </a>&nbsp;&nbsp;/&nbsp;&nbsp;<a
						class="btn btn-primary" href="./remove_alumni?id=<%=f.getAid()%>">Remove</a>
						<%
							} else if (f.getStatus().equals("Accepted"))
						%> Accepted<%
							else
						%> removed
					</td>
				</tr>
			</tbody>
			<%
				}
			}
			%>
		</table>
	</div>
</body>
</html>
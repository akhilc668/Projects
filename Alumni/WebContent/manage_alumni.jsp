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
	<%@page
		import="com.pojo.Alumni,com.commonfiles.TrackAlumni,java.util.*"%>
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
				String year = request.getParameter("year");
			String department = request.getParameter("department");
			String cName = request.getParameter("collegename");
			System.out.println(year+" "+department+" "+cName);
			List li = null;
			if (year == null && department == null && cName == null || year.equals("") && department.equals("") && cName.equals(""))
				li = TrackAlumni.getAlumnis();
			else if (year.equals("")) {
				int year1 = 0;
				li = TrackAlumni.searchAlumnis(year1, department, cName);
			}else {
				int year1 = Integer.parseInt(year);
				li = TrackAlumni.searchAlumnis(year1, department, cName);
			}
			if (li == null) {
			%>
			<tbody></tbody>
			<%
				} else {
			Iterator i = li.iterator();
			while (i.hasNext()) {
				Alumni a = (Alumni) i.next();
			%>
			<tbody>
				<tr>
					<td><%=a.getAid()%></td>
					<td><%=a.getRollnumber()%></td>
					<td><%=a.getFirstname() + "" + a.getLastname()%></td>
					<td><%=a.getCollegename()%></td>
					<td><%=a.getDepartment()%></td>
					<td><%=a.getYear()%></td>
					<td><a class="btn btn-primary"
						href="./alumni_profile.jsp?page=directorate&id=<%=a.getAid()%>">View Alumni</a></td>
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
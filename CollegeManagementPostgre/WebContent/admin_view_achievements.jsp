<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Achievements</title>
</head>
<body>
	<%@include file="admin.jsp"%>
	<%@page
		import="com.pojo.faculty.Achievements,com.admin.ViewBean,java.util.*"%>
	<h1 align="center">Welcome to View Achievement Page</h1>

	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="admin_view_achievements.jsp" align="center">
							<div class="form-group">
								<label>Enter Department Name : </label> <input type="text"
									class="form-control" name="department"
									placeholder="Enter department name"> <label>Enter
									Faculty Name : </label> <input type="text" class="form-control"
									name="name" placeholder="Enter faculty name"> <br>
								<input type="submit" class="btn btn-primary" value="search"><br>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>

	<div class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>

					<td>Faculty Name</td>
					<td>Department</td>
					<td>Position</td>
					<td>Achievement</td>

				</tr>
			</thead>
			<%
			String name=request.getParameter("name");
			String department=request.getParameter("department");
			if((name==null&&department==null)||name.equals("")&&department.equals(""))
			{
			List li = ViewBean.getAchievement();
			Iterator i = li.iterator();
			while (i.hasNext()) {
				Achievements s = (Achievements) i.next();
			%>
			<tr>

				<td><%=s.getName()%></td>
				<td><%=s.getDepartment()%></td>
				<td><%=s.getPosition()%></td>
				<td><%=s.getAchievements()%></td>
			</tr>

			<%
				}}
			else if(name!=null&&department!=null)
			{
				List li = ViewBean.searchAchievement(name,department);
				Iterator i = li.iterator();
				while (i.hasNext()) {
					Achievements s = (Achievements) i.next();
				%>
			<tr>

				<td><%=s.getName()%></td>
				<td><%=s.getDepartment()%></td>
				<td><%=s.getPosition()%></td>
				<td><%=s.getAchievements()%></td>
			</tr>

			<%
					}}
			
			%>
		</table>
	</div>
</body>
</html>
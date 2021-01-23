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
	<%@page
		import="com.pojo.student.CollegeEvent,com.admin.ViewBean,java.util.*"%>
	<h1 align="center">Welcome to View Event Page</h1>

	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="admin_view_event.jsp" align="center">
							<div class="form-group">
								<label>Enter Student name :</label> <input type="text"
									class="form-control" name="name"
									placeholder="Enter student name"> <label>Enter
									Roll Number : </label> <input type="text" class="form-control"
									name="rollnumber" placeholder="Enter roll number"> <label>Enter
									Event Name : </label> <input type="text" class="form-control"
									name="eventname" placeholder="Enter event name"> <br>
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
					<td>Student Name</td>
					<td>Department</td>
					<td>Roll Number</td>
					<td>Event Name</td>
					<td>Topic</td>
					<td>File Download</td>
				</tr>
			</thead>
			<%
			String name=request.getParameter("name");
			String rollnumber=request.getParameter("rollnumber");
			String eventname=request.getParameter("eventname");
			if((name==null&&rollnumber==null&&eventname==null)||name.equals("")&&rollnumber.equals("")&&eventname.equals(""))
			{
			String path = getServletContext().getInitParameter("file-download");
			List li = ViewBean.getEvents();
			Iterator i = li.iterator();
			while (i.hasNext()) {
				CollegeEvent ce = (CollegeEvent) i.next();
				String file = path + ce.getFilename();
				System.out.println(file);
			%>
			<tbody>
				<tr>
					<td><%=ce.getName()%></td>
					<td><%=ce.getDepartment()%></td>
					<td><%=ce.getRollnumber()%></td>
					<td><%=ce.getEventname()%></td>
					<td><%=ce.getTopic()%></td>
					<td><a href="<%=file%>" download>Download</a></td>
				</tr>
			</tbody>
			<%
				}
			}
			else if(name!=null&&rollnumber!=null&&eventname!=null)
			{
				String path = getServletContext().getInitParameter("file-download");
				List li = ViewBean.searchEvents(name,rollnumber,eventname);
			Iterator i = li.iterator();
			while (i.hasNext()) {
				CollegeEvent ce = (CollegeEvent) i.next();
				String file = path + ce.getFilename();
				System.out.println(file);
			%>
			<tbody>
				<tr>
					<td><%=ce.getName()%></td>
					<td><%=ce.getDepartment()%></td>
					<td><%=ce.getRollnumber()%></td>
					<td><%=ce.getEventname()%></td>
					<td><%=ce.getTopic()%></td>
					<td><a href="<%=file%>" download>Download</a></td>
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
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
		import="com.pojo.faculty.GuestLecture,com.admin.ViewBean,java.util.*"%>

	<h1 align="center">Welcome to View Guest Lecture Page</h1>

<div class="container">
<div class="row justify-content-center align-items-center"
style="height: 50vh">
<div class="col-4">
<div class="card">
<div class="card-body">
<form action="admin_view_guest_lecture.jsp" align="center">
<div class="form-group">
<label>Enter Date: </label>
<input type="date" class="form-control" name="date" placeholder="Enter Date">

<label>Enter topic :</label>
<input type="text" class="form-control" name="topic"  placeholder="Enter topic name">

<label>Enter Faculty Name : </label>
<input type="text" class="form-control" name="name"  placeholder="Enter faculty name">
<br>
<input type="submit" class="btn btn-primary" value="search"><br>
</form>
</div></div></div></div></div>
<br><br>
	<div id="right" class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Faculty Name</td>
					<td>Department</td>
					<td>Position</td>
					<td>Topic</td>
					<td>Date</td>
					<td>Faculty Profile</td>
					<td>Description</td>
				</tr>
			</thead>
			<%
			String date=request.getParameter("date");
			String topic=request.getParameter("topic");
			String name=request.getParameter("name");
			if((date==null&&topic==null&&name==null)||date.equals("")&&topic.equals("")&&name.equals(""))
			{
			List li = ViewBean.getLecture();
			Iterator i = li.iterator();
			while (i.hasNext()) {
				GuestLecture s = (GuestLecture) i.next();
			%>
			<tr>
				<td><%=s.getName()%></td>
				<td><%=s.getDepartment()%></td>
				<td><%=s.getPosition()%></td>
				<td><%=s.getTopic()%></td>
				<td><%=s.getDate_of_event()%></td>
				<td><%=s.getProfile_of_guest_faculty()%></td>
				<td><%=s.getDescription_of_event()%></td>
			</tr>
			<%
				}}
			else if(date!=null&&topic!=null&&name!=null)
			{
				List li = ViewBean.searchLecture(date,topic,name);
			Iterator i = li.iterator();
			while (i.hasNext()) {
				GuestLecture s = (GuestLecture) i.next();
			%>
			<tr>
				<td><%=s.getName()%></td>
				<td><%=s.getDepartment()%></td>
				<td><%=s.getPosition()%></td>
				<td><%=s.getTopic()%></td>
				<td><%=s.getDate_of_event()%></td>
				<td><%=s.getProfile_of_guest_faculty()%></td>
				<td><%=s.getDescription_of_event()%></td>
			</tr>
			<%
				}}
			%>
		</table>
	</div>
</body>
</html>
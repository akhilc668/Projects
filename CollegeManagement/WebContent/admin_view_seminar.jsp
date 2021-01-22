<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Seminar</title>
</head>
<body>
	<%@include file="admin.jsp"%>
	<%@page import="com.pojo.faculty.Seminar,com.admin.ViewBean,java.util.*"%>
	<h1 align="center">Welcome to View Seminar Page</h1>
		
<div class="container">
<div class="row justify-content-center align-items-center"
style="height: 50vh">
<div class="col-4">
<div class="card">
<div class="card-body">
<form action="admin_view_seminar.jsp" align="center">
<div class="form-group">
<label>Enter Date: </label>
<input type="date" class="form-control" name="date" placeholder="Enter Date">

<label>Enter topic :</label>
<input type="text" class="form-control" name="topic"  placeholder="Enter topic name">

<label>Enter Place : </label>
<input type="text" class="form-control" name="place"  placeholder="Enter Place">

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
					<td>Seminar ID</td>
					<td>Faculty Name</td>
					<td>Department</td>
					<td>Date</td>
					<td>Position</td>
					<td>Topic</td>
					<td>Place of Seminar</td>
					<td>Type of Seminar</td>
				</tr>
			</thead>
			<%
			String date=request.getParameter("date");
			String topic=request.getParameter("topic");
			String name=request.getParameter("name");
			String place=request.getParameter("place");
		if((date==null&&topic==null&&name==null&&place==null)||date.equals("")&&topic.equals("")&&name.equals("")&&place.equals(""))
			{	
			List li = ViewBean.getSeminar();
			Iterator i = li.iterator();
			while (i.hasNext()) {
				Seminar s = (Seminar) i.next();
			%>

			<tr>
				<td><%=s.getId()%></td>
				<td><%=s.getName()%></td>
				<td><%=s.getDepartment()%></td>
				<td><%=s.getDate()%></td>
				<td><%=s.getPosition()%></td>
				<td><%=s.getTopic()%></td>
				<td><%=s.getPlace_of_seminar()%></td>
				<td><%=s.getFormat()%></td>
			</tr>
			<%
				}
			}
		else if(date!=null&&topic!=null&&name!=null&&place!=null)
		{
			List li = ViewBean.searchSeminar(date,topic,place,name);
			Iterator i = li.iterator();
			while (i.hasNext()) {
				Seminar s = (Seminar) i.next();
			%>

			<tr>
				<td><%=s.getId()%></td>
				<td><%=s.getName()%></td>
				<td><%=s.getDepartment()%></td>
				<td><%=s.getDate()%></td>
				<td><%=s.getPosition()%></td>
				<td><%=s.getTopic()%></td>
				<td><%=s.getPlace_of_seminar()%></td>
				<td><%=s.getFormat()%></td>
			</tr>
			<%
				}
		}%>
		</table>
	</div>
</body>
</html>
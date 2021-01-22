<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="admin.jsp" %>
<%@page import="com.pojo.student.StudentMarks,com.admin.ViewBean,java.util.*" %>
	<h1 align="center">Welcome to View Year Wise Marks Page</h1>
	
<div class="container">
<div class="row justify-content-center align-items-center"
style="height: 50vh">
<div class="col-4">
<div class="card">
<div class="card-body">
<form action="admin_view_scores.jsp" align="center">
<div class="form-group">
<label>Enter Student name :</label>
<input type="text" class="form-control" name="name"  placeholder="Enter student name">

<label>Enter Roll Number  : </label>
<input type="text" class="form-control" name="rollnumber"  placeholder="Enter roll number">

<label>Enter Year in Romans  : </label>
<input type="text" class="form-control" name="year"  placeholder="Enter year">
<br>
<input type="submit" class="btn btn-primary" value="search"><br>
</form>
</div></div></div></div></div>	
<br><br>	
	
	<div id="right" class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Student Name</td>
					<td>Department</td>
					<td>Roll Number</td>
					<td>Year</td>
					<td>Semester</td>
					<td>Percentage</td>
				</tr>
			</thead>
			<%
			String name=request.getParameter("name");
			String rollnumber=request.getParameter("rollnumber");
			String year=request.getParameter("year");
			if((name==null&&rollnumber==null&&year==null)||name.equals("")&&rollnumber.equals("")&&year.equals(""))
			{
			List li=ViewBean.getMarks();
			Iterator i=li.iterator();
			while(i.hasNext()){
				StudentMarks sm=(StudentMarks)i.next();
			%>
			<tbody>
				<tr>
					<td><%=sm.getName() %></td>
					<td><%=sm.getDepartment()%></td>
					<td><%=sm.getRollnumber()%></td>
					<td><%=sm.getYear()%></td>
					<td><%=sm.getSemester()%></td>
					<td><%=sm.getPercentage()%></td>
				</tr>
			</tbody>
			<%} }
			else if(name!=null&&rollnumber!=null&&year!=null)
			{
				List li=ViewBean.searchMarks(name,rollnumber,year);
				Iterator i=li.iterator();
				while(i.hasNext()){
					StudentMarks sm=(StudentMarks)i.next();
				%>
				<tbody>
					<tr>
						<td><%=sm.getName() %></td>
						<td><%=sm.getDepartment()%></td>
						<td><%=sm.getRollnumber()%></td>
						<td><%=sm.getYear()%></td>
						<td><%=sm.getSemester()%></td>
						<td><%=sm.getPercentage()%></td>
					</tr>
				</tbody>
				<%} }
			%>
		</table>
	</div>
</body>
</html>
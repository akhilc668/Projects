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
		import="com.pojo.student.Placement,com.admin.ViewBean,java.util.*"%>
	<h1 align="center">Welcome to View Placement Page</h1>


	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="admin_view_placement.jsp" align="center">
							<div class="form-group">
								<label>Enter Student name :</label> <input type="text"
									class="form-control" name="name"
									placeholder="Enter student name"> <label>Enter
									Roll Number : </label> <input type="text" class="form-control"
									name="rollnumber" placeholder="Enter roll number"> <label>Enter
									Company Name : </label> <input type="text" class="form-control"
									name="companyname" placeholder="Enter company name"> <br>
								<input type="submit" class="btn btn-primary" value="search"><br>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<div id="right" class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Student Name</td>
					<td>Department</td>
					<td>Roll Number</td>
					<td>Company name</td>
					<td>Package</td>
				</tr>
			</thead>
			<%
			String name=request.getParameter("name");
			String rollnumber=request.getParameter("rollnumber");
			String companyname=request.getParameter("companyname");
			if((name==null&&rollnumber==null&&companyname==null)||name.equals("")&&rollnumber.equals("")&&companyname.equals(""))
			{
			List li=ViewBean.getPlacement();
			Iterator i=li.iterator();
			while(i.hasNext()){
				Placement p=(Placement)i.next();
			%>
			<tbody>
				<tr>
					<td><%=p.getName() %></td>
					<td><%=p.getDepartment()%></td>
					<td><%=p.getRollNumber() %></td>
					<td><%=p.getCompanyName()%></td>
					<td><%=p.getSalary() %></td>
				</tr>
			</tbody>
			<%} }
			else if(name!=null&&rollnumber!=null&&companyname!=null)
			{
			
			List li=ViewBean.searchPlacement(name,rollnumber,companyname);
			Iterator i=li.iterator();
			while(i.hasNext()){
				Placement p=(Placement)i.next();
			%>
			<tbody>
				<tr>
					<td><%=p.getName() %></td>
					<td><%=p.getDepartment()%></td>
					<td><%=p.getRollNumber() %></td>
					<td><%=p.getCompanyName()%></td>
					<td><%=p.getSalary() %></td>
				</tr>
			</tbody>
			<%} }%>
		</table>
	</div>
</body>
</html>
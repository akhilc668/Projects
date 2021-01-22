<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

#profile {
	width: 100px;
	height: 100px;
}
</style>
</head>
<body>
	<%@include file="admin.jsp"%>
	<%@page import="com.pojo.student.Student,com.admin.ManageStudentBean"%>
	<h1 align="center">Welcome to Student Profile Page</h1>
	<%
	int id=Integer.parseInt(request.getParameter("id"));
		Student stud = ManageStudentBean.getStudentById(id);
	String image = getServletContext().getInitParameter("file-download") + "" + stud.getPicture();
	System.out.println(image);
	%>
	<div class="container">
		<table class="table table-bordered table-info">
			<tr>
				<td>Profile</td>
				<td><img src="<%=image%>" id="profile"></td>
			</tr>
			<tr>
				<td>First Name:</td>
				<td><%=stud.getFirstname()%></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><%=stud.getLastname()%></td>
			</tr>
			<tr>
				<td>Eamil</td>
				<td><%=stud.getEmail()%></td>
			</tr>
			<tr>
				<td>Phone Number</td>
				<td><%=stud.getMobile()%></td>
			</tr>
			<tr>
				<td>Roll Number</td>
				<td><%=stud.getRollnumber()%></td>
			</tr>

			<tr>
				<td>Department</td>
				<td><%=stud.getDepartment()%></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><%=stud.getAddress()%></td>
			</tr>
			<tr>
				<td>Pincode</td>
				<td><%=stud.getPincode()%></td>
			</tr>
			<tr>
				<td>Nationality</td>
				<td><%=stud.getNationality()%></td>
			</tr>
			<tr>
				<td>Inter Marks</td>
				<td><%=stud.getInter_percentage()%></td>
			</tr>
			<tr>
				<td>SSC Marks</td>
				<td><%=stud.getSsc_percentage()%></td>
			</tr>
		</table>
	</div>
</body>
</html>
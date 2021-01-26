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
	<%
		String pages = request.getParameter("page");
	 if (pages.equals("college")) {
	%>
	<%@include file="college.jsp"%>
	<h1 align="center">Welcome to College view Alumni Profile Page</h1>
	<%
		} else {
	%>
	<%@include file="directorate.jsp"%>
	<h1 align="center">Welcome to Directorate view Alumni Profile Page</h1>
	<%
		}
	%>
	<%@page
		import="com.pojo.Alumni,com.commonfiles.TrackAlumni, java.util.List"%>

	<%
		int id = Integer.parseInt(request.getParameter("id"));
	Alumni a = TrackAlumni.getAlumniById(id);
	String image = getServletContext().getInitParameter("file-download") + "" + a.getPicture();
	System.out.println(image);
	%>
	<div class="container">
		<table class="table table-bordered table-info">

			<tr>
				<td>Picture:</td>
				<td><img src="<%=image%>" id="profile"></td>
			</tr>
			<tr>
				<td>First Name:</td>
				<td><%=a.getFirstname()%></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><%=a.getLastname()%></td>
			</tr>
			<tr>
				<td>Roll Number:</td>
				<td><%=a.getRollnumber()%></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><%=a.getEmail()%></td>
			</tr>
			<tr>
				<td>College Name</td>
				<td><%=a.getCollegename()%></td>
			</tr>
			<tr>
				<td>Department:</td>
				<td><%=a.getDepartment()%></td>
			</tr>

			<tr>
				<td>Year:</td>
				<td><%=a.getYear()%></td>
			</tr>
			<tr>
				<td>Mobile:</td>
				<td><%=a.getMobile()%></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><%=a.getAddress()%></td>
			</tr>
			<tr>
				<td>Present:</td>
				<td><%=a.getPicture()%></td>
			</tr>
			<tr>
				<td>Description:</td>
				<td><%=a.getDescription()%></td>
			</tr>
		</table>
	</div>
</body>
</html>
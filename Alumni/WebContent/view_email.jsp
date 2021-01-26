<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String pages = request.getParameter("page");
	if (pages.equals("alumni")) {
	%>
	<%@include file="alumni.jsp"%>
	<h1 align="center">Welcome to Alumni view Email Page</h1>
	<%
		} else if (pages.equals("college")) {
	%>
	<%@include file="college.jsp"%>
	<h1 align="center">Welcome to College view Email Page</h1>
	<%
		} else {
	%>
	<%@include file="directorate.jsp"%>
	<h1 align="center">Welcome to Directorate view Email Page</h1>
	<%
		}
	%>
	<%@page import="com.pojo.Email,com.commonfiles.EmailBean,java.util.*"%>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
	Email e = EmailBean.getmail(id);
	%>
	<div class="container">
		<table class="table table-bordered table-info">
			<tr>
				<td><%=e.getEsubject()%></td>
			</tr>
			<tr>
				<td>To:<%=e.getEto()%></td>
			</tr>
			<tr>
				<td>From:<%=e.getEfrom()%></td>
			</tr>
			<tr>
				<td><%=e.getEcontent()%></td>
			</tr>
		</table>
	</div>
</body>
</html>
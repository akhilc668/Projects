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
	String email = "";
	if (pages.equals("alumni")) {
	%>
	<%@include file="alumni.jsp"%>
	<h1 align="center">Welcome to Alumni Sent Email Page</h1>
	<%
		email = (String) session.getAttribute("aemail");
	} else if (pages.equals("college")) {
	%>
	<%@include file="college.jsp"%>
	<h1 align="center">Welcome to College Sent Email Page</h1>
	<%
		email = (String) session.getAttribute("cemail");
	} else {
	%>
	<%@include file="directorate.jsp"%>
	<h1 align="center">Welcome to Directorate Sent Email Page</h1>
	<%
		email = (String) session.getAttribute("demail");
	}
	%>
	<%@page import="com.pojo.Email,com.commonfiles.EmailBean,java.util.*"%>
	<div class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>To</td>
					<td>Subject</td>
					<td>View</td>
				</tr>
			</thead>
			<%
				List li = EmailBean.getSentEmails(email);
			Iterator i = li.iterator();
			while (i.hasNext()) {
				Email ce = (Email) i.next();
			%>
			<tbody>
				<tr>
					<td><%=ce.getEto()%></td>
					<td><%=ce.getEsubject()%></td>
					<td><a
						href="view_email.jsp?page=<%=pages%>&id=<%=ce.getId()%>">View
							Content</a></td>
				</tr>
			</tbody>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
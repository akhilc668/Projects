<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Paper Publications</title>
</head>
<body>
<%@include file="faculty.jsp" %>
<%@page import="com.pojo.faculty.PaperPublications,com.faculty.PaperPublicationBean,java.util.*" %>

<h1 align="center">Welcome to View Paper Publication Page</h1>

	<div id="right" class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Faculty Name</td>
					<td>Department</td>
					<td>Position</td>
					<td>Topic</td>
					<td>Date</td>
					<td>File Download</td>
				</tr>
			</thead>
			<%
				int fid = (Integer) session.getAttribute("fid");
			String path = getServletContext().getInitParameter("file-upload");
			List li = PaperPublicationBean.getPaperById(fid);
			Iterator i = li.iterator();
			while (i.hasNext()) {
				PaperPublications p = (PaperPublications) i.next();
				String file = path + p.getFilename();
				System.out.println(file);
			%>
			<tbody>
				<tr>
					<td><%=p.getName()%></td>
					<td><%=p.getDepartment()%></td>
					<td><%=p.getPosition()%></td>
					<td><%=p.getTopic()%></td>
					<td><%=p.getDate()%></td>
					<td><a href="<%=file%>" download>Download</a></td>
				</tr>
			</tbody>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
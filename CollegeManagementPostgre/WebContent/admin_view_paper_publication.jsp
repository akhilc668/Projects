<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Paper Publications</title>
</head>
<body>
	<%@include file="admin.jsp"%>
	<%@page
		import="com.pojo.faculty.PaperPublications,com.admin.ViewBean,java.util.*"%>

	<h1 align="center">Welcome to View Paper Publication Page</h1>



	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="admin_view_paper_publication.jsp" align="center">
							<div class="form-group">
								<label>Enter Date: </label> <input type="date"
									class="form-control" name="date" placeholder="Enter Date">

								<label>Enter topic :</label> <input type="text"
									class="form-control" name="topic"
									placeholder="Enter topic name"> <label>Enter
									Faculty Name : </label> <input type="text" class="form-control"
									name="name" placeholder="Enter faculty name"> <br>
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
					<td>Faculty Name</td>
					<td>Department</td>
					<td>Position</td>
					<td>Topic</td>
					<td>Date</td>
					<td>File Download</td>
				</tr>
			</thead>
			<%
			String date=request.getParameter("date");
			String topic=request.getParameter("topic");
			String name=request.getParameter("name");
			if((date==null&&topic==null&&name==null)||date.equals("")&&topic.equals("")&&name.equals(""))
			{			
			String path = getServletContext().getInitParameter("file-download");
			List li = ViewBean.getPaper();
			Iterator i = li.iterator();
			while (i.hasNext()) {
				PaperPublications p = (PaperPublications) i.next();
				String file = path + p.getFilename();
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
			}
			else if(date!=null&&topic!=null&&name!=null)
			{
				String path = getServletContext().getInitParameter("file-download");
				List li = ViewBean.searchPaper(date,topic,name);
				Iterator i = li.iterator();
				while (i.hasNext()) {
					PaperPublications p = (PaperPublications) i.next();
					String file = path + p.getFilename();
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

			<% 	}
		}%>

		</table>
	</div>
</body>
</html>
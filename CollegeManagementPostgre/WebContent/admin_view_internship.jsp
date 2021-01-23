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
		import="com.pojo.student.Internship,com.admin.ViewBean,java.util.*"%>
	<h1 align="center">Welcome to View Internship Page</h1>

	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="admin_view_internship.jsp" align="center">
							<div class="form-group">
								<label>Enter Student name :</label> <input type="text"
									class="form-control" name="name"
									placeholder="Enter student name"> <label>Enter
									Roll Number : </label> <input type="text" class="form-control"
									name="rollnumber" placeholder="Enter roll number"> <label>Enter
									Topic Name : </label> <input type="text" class="form-control"
									name="topic" placeholder="Enter topic name"> <br>
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
					<td>Topic</td>
					<td>Duration</td>
					<td>File Download</td>
				</tr>
			</thead>
			<%
			String name=request.getParameter("name");
			String rollnumber=request.getParameter("rollnumber");
			String topic=request.getParameter("topic");
			if((name==null&&rollnumber==null&&topic==null)||name.equals("")&&rollnumber.equals("")&&topic.equals(""))
			{
			
			int studid=(Integer)session.getAttribute("studid");
			String path=getServletContext().getInitParameter("file-download");
			List li=ViewBean.getInternship();
			Iterator i=li.iterator();
			while(i.hasNext()){
				Internship p=(Internship)i.next();
				String file=path+p.getFilename();
				System.out.println(file);
			%>
			<tbody>
				<tr>
					<td><%=p.getName() %></td>
					<td><%=p.getDepartment()%></td>
					<td><%=p.getRollnumber()%></td>
					<td><%=p.getTopic()%></td>
					<td><%=p.getDuration()%></td>
					<td><a href="<%=file%>" download>Download</a></td>
				</tr>
			</tbody>
			<%}
			}
			else if(name!=null&&rollnumber!=null&&topic!=null)
			{
				int studid=(Integer)session.getAttribute("studid");
				String path=getServletContext().getInitParameter("file-download");
				List li=ViewBean.searchInternship(name,rollnumber,topic);
				Iterator i=li.iterator();
				while(i.hasNext()){
					Internship p=(Internship)i.next();
					String file=path+p.getFilename();
					System.out.println(file);
				%>
			<tbody>
				<tr>
					<td><%=p.getName() %></td>
					<td><%=p.getDepartment()%></td>
					<td><%=p.getRollnumber()%></td>
					<td><%=p.getTopic()%></td>
					<td><%=p.getDuration()%></td>
					<td><a href="<%=file%>" download>Download</a></td>
				</tr>
			</tbody>
			<%}
				}
			%>
		</table>
	</div>
</body>
</html>
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
	<h1 align="center">Welcome to Alumni view Event Page</h1>
	<%
		} else if (pages.equals("college")) {
	%>
	<%@include file="college.jsp"%>
	<h1 align="center">Welcome to College view Event Page</h1>
	<%
		} else {
	%>
	<%@include file="directorate.jsp"%>
	<h1 align="center">Welcome to Directorate view Event Page</h1>
	<%
		}
	%>
	<%@page
		import="com.pojo.Events,com.commonfiles.AddEventBean,java.util.*"%>
	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-5">
				<div class="card">
					<div class="card-body">

						<form action="view_event.jsp">
							<div class="form-group">
								<label>Enter College Name : </label> <input type="text"
									class="form-control" name="collegename"
									placeholder="Enter College name"><label>Enter Topic : </label> <input type="text"
									class="form-control" name="topic"
									placeholder="Enter Topic"> <label>Enter
									Date : </label> <input type="date" class="form-control" name="date"
									placeholder="Enter Date"> <input type="hidden" name="page" value="<%=pages%>"><br>
								<input type="submit" class="btn btn-primary" value="search"><br>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>Event Id</td>
					<td>Event Name</td>
					<td>Topic</td>
					<td>Date</td>
					<td>College Name</td>
					<td>File Download</td>
				</tr>
			</thead>
			<%
			String cname=request.getParameter("collegename");
			String date=request.getParameter("date");
			String topic=request.getParameter("topic");
				String path = getServletContext().getInitParameter("file-download");
			List li = null;
			if(cname==null&&date==null&&topic==null||cname.equals("")&&date.equals("")&&topic.equals(""))
				li=	AddEventBean.getEvents();
			else
				li=AddEventBean.getEventsBySearch(cname,date,topic);
			if (li == null) {
			%>
			<tbody></tbody>
			<%
				} else {
			Iterator i = li.iterator();
			while (i.hasNext()) {
				Events ce = (Events) i.next();
				String file = path + ce.getFilename();
			%>
			<tbody>
				<tr>
					<td><%=ce.getEid()%></td>
					<td><%=ce.getEname()%></td>
					<td><%=ce.getTopic()%></td>
					<td><%=ce.getDate()%></td>
					<td><%=ce.getCollegename()%></td>
					<td><a href="<%=file%>" download>Download</a></td>
				</tr>
			</tbody>
			<%
				}
			}
			%>
		</table>
	</div>
</body>
</html>
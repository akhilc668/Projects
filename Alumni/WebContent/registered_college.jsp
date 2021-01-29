<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="directorate.jsp"%>
	<h1 align="center">Welcome to Registered College Page</h1>
	<%@page
		import="com.pojo.College,com.directorate.ManageCollegeBean,java.util.*"%>
	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 38vh">
			<div class="col-5">
				<div class="card">
					<div class="card-body">
						<form action="manage_college.jsp">
							<div class="form-group">
								<label>Enter College Name : </label> <input type="text"
									class="form-control" name="collegename"
									placeholder="Enter First name"> <label>Enter
									College Code : </label> <input type="text" class="form-control"
									name="ccode" placeholder="Enter College code"> <br>
								<input type="submit" class="btn btn-primary" value="search"><br>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="right" class="container">
		<table class="table table-bordered table-info">
			<thead>
				<tr>
					<td>College Id</td>
					<td>College Name</td>
					<td>College code</td>
					<td>Action</td>
				</tr>
			</thead>
			<%
				String collegename = request.getParameter("collegename");
			String ccode = request.getParameter("ccode");
			List li = null;
			if (collegename == null && ccode == null || collegename.equals("") && ccode.equals(""))
				li = ManageCollegeBean.getRegisteredCollege();
			else
				li = ManageCollegeBean.getCollege(collegename, ccode);
			Iterator i = li.iterator();
			while (i.hasNext()) {
				College f = (College) i.next();
			%>
			<tbody>
				<tr>
					<td><%=f.getCid()%></td>
					<td><%=f.getCname()%></td>
					<td><%=f.getCollegecode()%></td>
					<td>
						<%
							if (f.getStatus().equals("none")) {
						%><a class="btn btn-primary"
						href="./accept_college?id=<%=f.getCid()%>">Accept </a>&nbsp;&nbsp;/&nbsp;&nbsp;<a
						class="btn btn-primary" href="./remove_college?id=<%=f.getCid()%>">Remove</a>
						<%
							} else if (f.getStatus().equals("Accepted"))
						%> Accepted<%
							else
						%> removed
					</td>
				</tr>
			</tbody>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
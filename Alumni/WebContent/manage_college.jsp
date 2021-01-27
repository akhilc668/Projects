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
	<h1 align="center">Welcome to Manage College Page</h1>
	<%@page import="com.pojo.College,com.directorate.ManageCollegeBean,java.util.*"%>
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
			if(collegename==null&&ccode==null||collegename.equals("")&&ccode.equals(""))
				 li = ManageCollegeBean.getColleges();
			else
				li=ManageCollegeBean.getCollegesBySearch(collegename,ccode);
			Iterator i = li.iterator();
			while (i.hasNext()) {
				College f = (College) i.next();
				
			%>
			<tbody>
				<tr>
					<td><%=f.getCid()%>
					<td><%=f.getCname()%></td>
					<td><%=f.getCollegecode()%></td>
					<td><a class="btn btn-primary"
						href="./college_profile.jsp?id=<%=f.getCid()%>">View College</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a
						class="btn btn-primary" href="./remove_college?id=<%=f.getCid()%>">Remove</a></td>
				</tr>
			</tbody>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
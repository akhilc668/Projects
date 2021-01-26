<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="alumni.jsp" %>
<h1 align="center">Welcome to Alumni Update Profile Page</h1>
<%@page import="com.pojo.Alumni" %>
<%Alumni s=(Alumni)session.getAttribute("alumni");%>
<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 50vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="./alumni_present" method="post">
							<div class="form-group">
								Working Status: <br>
								<%if(s.getPresent().equals("furtherstudies")){ %>
								<input type="radio" name="present"  required="required" value="furtherstudies" checked="checked">&nbsp;Further Studies&nbsp;&nbsp;
								<input type="radio" name="present"  required="required" value="job">&nbsp;Job&nbsp;&nbsp;
								<input type="radio" name="present"  required="required" value="startup">&nbsp;Start Up
								<%} else if(s.getPresent().equals("job")){%>
								<input type="radio" name="present" required="required" value="furtherstudies">&nbsp;Further Studies&nbsp;&nbsp;
								<input type="radio" name="present"  required="required" value="job" checked="checked">&nbsp;Job&nbsp;&nbsp;
								<input type="radio" name="present"  required="required" value="startup">&nbsp;Start Up
								<%}else if(s.getPresent().equals("startup")) {%>
								<input type="radio" name="present"  required="required" value="furtherstudies">&nbsp;Further Studies&nbsp;&nbsp;
								<input type="radio" name="present"  required="required" value="job">&nbsp;Job&nbsp;&nbsp;
								<input type="radio" name="present"  required="required" value="startup" checked="checked">&nbsp;Start Up
								<%}else {%>
								<input type="radio" name="present"  required="required" value="furtherstudies">&nbsp;Further Studies&nbsp;&nbsp;
								<input type="radio" name="present"  required="required" value="job">&nbsp;Job&nbsp;&nbsp;
								<input type="radio" name="present"  required="required" value="startup">&nbsp;Start Up
								<%} %>
							</div>
							<div class="form-group">
								Description: <input type="text" name="description"
									class="form-control" value="<%=s.getDescription() %>" required="required">
							</div>
							<input type="hidden" name="studid" value="<%=s.getAid()%>">
							<input type="submit" class="btn btn-primary" value="update">
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
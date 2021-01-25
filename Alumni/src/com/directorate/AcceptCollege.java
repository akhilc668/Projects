package com.directorate;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/accept_college")
public class AcceptCollege extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		boolean status=ManageCollegeBean.accept(id);
		if(status) {
			response.sendRedirect("registered_college.jsp?Accepted college");
		}else
			response.sendRedirect("registered_college.jsp?Not Accepted college");
	}

}

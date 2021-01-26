package com.college;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/accept_alumni")
public class AcceptAlumni extends HttpServlet {
		
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(request.getParameter("id"));
		boolean status=CollegeAlumniBean.accept(id);
		if(status)
			response.sendRedirect("registered_alumni.jsp?Accepted Alumni");
		else
			response.sendRedirect("registered_alumni.jsp?Not Accepted Alumni");	
	}
}

package com.college;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/remove_alumni")
public class RemoveAlumni extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		boolean status=CollegeAlumniBean.remove(id);
		if(status) 
			response.sendRedirect("registered_alumni.jsp?Removed Alumni");
		else
			response.sendRedirect("registered_alumni.jsp?Not Removed Alumni");
	
	}

}

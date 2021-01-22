package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/remove_student")
public class RemoveStudent extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		int i=ManageStudentBean.removeStudent(id);
		if(i>0) {
			response.sendRedirect("manage_student.jsp?msg=deleted successfully");
		}else
			response.sendRedirect("manage_student.jsp?msg=deleted failed");
	}

}

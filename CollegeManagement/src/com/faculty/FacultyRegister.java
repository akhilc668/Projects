package com.faculty;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.faculty.Faculty;

@WebServlet("/faculty_register")
public class FacultyRegister extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hi ");
		Faculty f = new Faculty();

		f.setFirstname(request.getParameter("firstname"));
		f.setLastname(request.getParameter("lastname"));
		f.setPassword(request.getParameter("password"));
		f.setEmail(request.getParameter("email"));
		f.setSubject(request.getParameter("subject"));
		f.setDepartment(request.getParameter("department"));
		boolean status = FacultyBean.register(f);

		if (status)
			response.sendRedirect("faculty_login.jsp?msg=registration successful");
		else
			response.sendRedirect("faculty_register.jsp?msg=registration failed");
	}

}

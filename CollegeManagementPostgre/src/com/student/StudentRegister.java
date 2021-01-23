package com.student;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.student.Student;


@WebServlet("/student_register")
public class StudentRegister extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Student s=new Student();
		s.setFirstname(request.getParameter("firstName"));
		s.setLastname(request.getParameter("lastName"));
		s.setEmail(request.getParameter("email"));
		s.setPassword(request.getParameter("password"));
		s.setDepartment(request.getParameter("department"));
		boolean status=StudentBean.save(s);
		if(status)
			response.sendRedirect("student_login.jsp?msg=registered sucessfully");
		else
			response.sendRedirect("student_register.jsp?msg=registered failed");
	}

}

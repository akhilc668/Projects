package com.student;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.student.Student;


@WebServlet("/student_login")
public class StudentLogin extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		Student s=StudentBean.login(email,password);
		HttpSession hs=request.getSession();
		if(s!=null) {
			hs.setAttribute("student", s);
			hs.setAttribute("studid", s.getStudent_id());
			response.sendRedirect("student_home.jsp?msg=login sucess");
		}
		else
			response.sendRedirect("student_login.jsp?msg=login failed");
	}

}

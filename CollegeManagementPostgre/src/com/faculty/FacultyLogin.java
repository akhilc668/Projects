package com.faculty;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.pojo.faculty.Faculty;

@WebServlet("/faculty_login")
public class FacultyLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession hs = request.getSession();
		String email=request.getParameter("email");
		String password=request.getParameter("password");

		Faculty f=FacultyBean.login(email, password);
		if(f!=null) {
			hs.setAttribute("faculty", f);
			hs.setAttribute("fid", f.getId());
			response.sendRedirect("faculty_home.jsp?msg=login successful");
		}else
			response.sendRedirect("faculty_login.jsp?msg=login failed");
	}

}

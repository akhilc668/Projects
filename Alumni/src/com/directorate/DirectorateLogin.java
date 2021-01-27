package com.directorate;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/directorate_login")
public class DirectorateLogin extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		HttpSession hs=request.getSession();
		if(username.equals("admin")&&password.equals("admin")) {
			hs.setAttribute("demail", "demosender4@gmail.com");
			response.sendRedirect("directorate_home.jsp?msg=logined successfully");
		}else {
			response.sendRedirect("directorate_login.jsp?msg=logined failed");
		}
	}

}

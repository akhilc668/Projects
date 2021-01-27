package com.alumni;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.Alumni;


@WebServlet("/alumni_login")
public class AlumniLogin extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		Alumni a=AlumniBean.login(email,password);
		HttpSession hs=request.getSession();
		if(a!=null) {
			hs.setAttribute("alumni", a);
			hs.setAttribute("aemail", "demosender4@gmail.com");
			response.sendRedirect("alumni_home.jsp?msg=logined successfully");
		}
		else
			response.sendRedirect("alumni_login.jsp?msg=logined failed");
	}
}

package com.college;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.College;


@WebServlet("/college_login")
public class CollegeLogin extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		College c=CollegeBean.login(email,password);
		HttpSession hs=request.getSession();
		if(c!=null)
		{
			hs.setAttribute("college", c);
			hs.setAttribute("cemail", "demosender4@gmail.com");
			hs.setAttribute("cname", c.getCname());
			response.sendRedirect("college_home.jsp?msg= login successfull");
		}
		else
			response.sendRedirect("college_login.jsp?msg=login failed");
	}
}

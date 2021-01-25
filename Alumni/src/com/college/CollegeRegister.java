package com.college;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.College;


@WebServlet("/college_register")
public class CollegeRegister extends HttpServlet {
	

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		College c=new College();
		c.setCname(request.getParameter("collegename"));
		c.setCollegecode(request.getParameter("collegecode"));
		c.setEmail(request.getParameter("email"));
		c.setPassword(request.getParameter("password"));
		
		boolean status=CollegeBean.register(c);
		
		if(status)
		{
			response.sendRedirect("college_login.jsp?msg=Registration Successfull");
		}
		else
			response.sendRedirect("college_register.jsp?msg=Registration Failed");
		
	}

}

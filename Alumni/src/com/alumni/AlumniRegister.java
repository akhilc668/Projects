package com.alumni;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.pojo.Alumni;


@WebServlet("/alumni_register")
public class AlumniRegister extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Alumni a=new Alumni();
		a.setFirstname(request.getParameter("firstName"));	
		a.setLastname(request.getParameter("lastName"));
		a.setEmail(request.getParameter("email"));
		a.setPassword(request.getParameter("password"));
		a.setCollegename(request.getParameter("collegename"));
		a.setDepartment(request.getParameter("department"));
		a.setRollnumber(request.getParameter("rollnumber"));
		a.setYear(Integer.parseInt(request.getParameter("year")));
		boolean status = AlumniBean.register(a);
		
		if(status)
			response.sendRedirect("alumni_login.jsp?msg=Registration Successfull");
		else
			response.sendRedirect("alumni_register.jsp?msg=Registration Failed");
		
	}

}

package com.Alumini;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.Alumni;


@WebServlet("/alumni_login")
public class AlumniLogin extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		Alumni a=AlumniBean.login(email,password);
		
		
	}
}

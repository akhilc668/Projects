package com.alumni;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.Alumni;


@WebServlet("/alumni_present")
public class AlumniPresent extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ss=request.getSession();
		String description=request.getParameter("description");
		String present=request.getParameter("present");
		int id=Integer.parseInt(request.getParameter("studid"));
		Alumni al=AlumniBean.updatePresent(description, present, id);
		if(al!=null)
		{
			ss.setAttribute("alumni", al);
			response.sendRedirect("alumni_present.jsp?msg=success");
		}
		else
			response.sendRedirect("alumni_present.jsp?msg=failed");
		
	}

}

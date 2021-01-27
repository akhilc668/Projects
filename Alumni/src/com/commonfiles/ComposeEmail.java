package com.commonfiles;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.Email;


@WebServlet("/compose_email")
public class ComposeEmail extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Email e=new Email();
		e.setEto(request.getParameter("composeto"));
		e.setEfrom(request.getParameter("from"));
		e.setEsubject(request.getParameter("subject"));
		e.setEcontent(request.getParameter("content"));
		String pages=request.getParameter("page");
		//boolean status=EmailBean.send(e);
		boolean status1=new SendEmail().sendEmail(e);
		if(status1)
			response.sendRedirect("compose_email.jsp?page="+pages+"&msg=sent mail");
		else
			response.sendRedirect("compose_email.jsp?page="+pages+"&msg=Failed to send");
	}

}

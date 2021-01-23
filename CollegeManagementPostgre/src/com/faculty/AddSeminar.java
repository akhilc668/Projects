package com.faculty;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.faculty.Seminar;

@WebServlet("/add_seminar")
public class AddSeminar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Seminar sp = new Seminar();
		HttpSession hs = request.getSession();
		

		sp.setDepartment(request.getParameter("department"));
		sp.setName(request.getParameter("name"));
		sp.setPosition(request.getParameter("position"));
		sp.setFormat(request.getParameter("format"));
		sp.setDate(request.getParameter("date"));
		sp.setTopic(request.getParameter("topic"));
		sp.setPlace_of_seminar(request.getParameter("place_of_seminar"));
		sp.setFid(Integer.parseInt(request.getParameter("fid")));

		boolean status = SeminarBean.add(sp);

		if (status) {
			response.sendRedirect("add_seminar.jsp?msg=seminar added successfully");
		} else {
			response.sendRedirect("add_seminar.jsp?msg=failed");
		}

	}

}

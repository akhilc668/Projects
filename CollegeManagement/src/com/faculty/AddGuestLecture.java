package com.faculty;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.faculty.GuestLecture;

@WebServlet("/add_guest_lecture")
public class AddGuestLecture extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession hs = request.getSession();

		GuestLecture glp = new GuestLecture();

		glp.setDepartment(request.getParameter("department"));
		glp.setName(request.getParameter("name"));
		glp.setPosition(request.getParameter("position"));
		glp.setTopic(request.getParameter("topic"));
		glp.setDate_of_event(request.getParameter("date"));
		glp.setProfile_of_guest_faculty(request.getParameter("facultyprofile"));
		glp.setDescription_of_event(request.getParameter("eventdescription"));
		glp.setFid(Integer.parseInt(request.getParameter("fid")));

		boolean obj = GuestLectureBean.add(glp);

		if (obj)
			response.sendRedirect("add_guest_lecture.jsp?msg=added");
		else
			response.sendRedirect("add_guest_lecture.jsp?mag=failed");

	}

}

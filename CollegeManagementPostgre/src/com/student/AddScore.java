package com.student;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.student.StudentMarks;


@WebServlet("/add_score")
public class AddScore extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StudentMarks m=new StudentMarks();
		String department=request.getParameter("department");
		String name=request.getParameter("name");
		String rollnumber=request.getParameter("rollnumber");
		String year=request.getParameter("year");
		String semester=request.getParameter("semester");
		float percentage=Float.parseFloat(request.getParameter("percentage"));
		int studid=Integer.parseInt(request.getParameter("studid"));
		m.setDepartment(department);
		m.setName(name);
		m.setRollnumber(rollnumber);
		m.setYear(year);
		m.setSemester(semester);
		m.setPercentage(percentage);
		m.setStudid(studid);
		boolean status=MarksBean.save(m);
		if(status)
			response.sendRedirect("add_scores.jsp?msg=scores added successfully");
		else
			response.sendRedirect("add_scores.jsp?msg=scores added failed");
	}

}

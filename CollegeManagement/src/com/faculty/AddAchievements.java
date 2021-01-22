package com.faculty;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.faculty.Achievements;


@WebServlet("/add_achievements")
public class AddAchievements extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Achievements ap = new Achievements();
		String department =request.getParameter("department");
		String name=request.getParameter("name");
		String postion=request.getParameter("position");
		String achivements=request.getParameter("achievements");
		int fid=Integer.parseInt(request.getParameter("fid"));
		ap.setDepartment(department);
		ap.setName(name);
		ap.setPosition(postion);
		ap.setAchievements(achivements);
		ap.setFid(fid);
		boolean status=AchievementsBean.add(ap);
		
		if(status) {
			response.sendRedirect("add_achievements.jsp?msg=successful");
		}
		else {
			response.sendRedirect("add_achievements.jsp?msg=failed");
		}
			
	}

}

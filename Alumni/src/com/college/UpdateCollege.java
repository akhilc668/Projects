package com.college;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.College;

@WebServlet("/college_update")
public class UpdateCollege extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		College c = new College();
		c.setCname(request.getParameter("cname"));
		c.setCollegecode(request.getParameter("ccode"));
		c.setEmail(request.getParameter("email"));
		c.setLocation(request.getParameter("location"));
		c.setCid(Integer.parseInt(request.getParameter("cid")));
		c.setPassword(request.getParameter("password"));
		c.setStatus(request.getParameter("status"));

		College clg = UpdateCollegeBean.update(c);

		HttpSession hs = request.getSession();
		if (clg != null) {
			hs.setAttribute("college", clg);
			response.sendRedirect("college_update_profile.jsp?msg=upadted successfully");
		} else
			response.sendRedirect("college_update_profile.jsp?msg=upadted failed");
	}

}

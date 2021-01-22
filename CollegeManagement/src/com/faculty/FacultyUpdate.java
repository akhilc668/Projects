package com.faculty;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.configure.FileUpload;
import com.pojo.faculty.Faculty;

@WebServlet("/faculty_update")
@MultipartConfig(fileSizeThreshold = 1024*1024*2,maxFileSize = 1024*1024*10,maxRequestSize = 1024*1024*50)
public class FacultyUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		Part part=request.getPart("file");
		String fileName = FileUpload.getFileNames(part);
		ServletContext context = getServletContext();
		String path=context.getInitParameter("file-upload");
		String savePath =path+File.separator+fileName;
		File fileSaveDir =new File(savePath);
		part.write(savePath+File.separator);
		Faculty f=new Faculty();
		f.setId(Integer.parseInt(request.getParameter("fid")));
		f.setFirstname(request.getParameter("firstname"));
		f.setLastname(request.getParameter("lastname"));
		f.setPassword(request.getParameter("password"));
		f.setEmail(request.getParameter("email"));
		f.setSubject(request.getParameter("subject"));
		f.setDepartment(request.getParameter("department"));
		f.setDesignation(request.getParameter("designation"));
		f.setTwitter(request.getParameter("twitter"));
		f.setLinkedin(request.getParameter("linkedin"));
		f.setFacebook(request.getParameter("facebook"));
		f.setPicture(fileName);
		Faculty f1=FacultyUpdateBean.update(f);
		HttpSession hs=request.getSession();
		if(f1!=null) {
			hs.setAttribute("faculty", f1);
			response.sendRedirect("faculty_profile.jsp?msg=upadted successfully");
		}
		else
			response.sendRedirect("faculty_update_profile.jsp?msg=upadted failed");
	}

}

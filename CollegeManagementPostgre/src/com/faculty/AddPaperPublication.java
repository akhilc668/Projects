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
import javax.servlet.http.Part;

import com.configure.FileUpload;
import com.pojo.faculty.PaperPublications;

@WebServlet("/add_paper_publication")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
public class AddPaperPublication extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		Part part=request.getPart("file");
		String fileName = FileUpload.getFileNames(part);
		ServletContext context = getServletContext();
		String path=context.getInitParameter("file-upload");
		String savePath =path+File.separator+fileName;
		File fileSaveDir =new File(savePath);
		part.write(savePath+File.separator);

		PaperPublications pp = new PaperPublications();
		pp.setDepartment(request.getParameter("department"));
		pp.setName(request.getParameter("name"));
		pp.setPosition(request.getParameter("position"));
		pp.setTopic(request.getParameter("topic"));
		pp.setDate(request.getParameter("date"));
		pp.setFilename(fileName);
		pp.setFid(Integer.parseInt(request.getParameter("fid")));
		boolean obj = PaperPublicationBean.add(pp);

		if (obj)
			response.sendRedirect("add_paper_publication.jsp?msg=success");
		else
			response.sendRedirect("add_paper_publication.jsp?msg=failed");
	}

}

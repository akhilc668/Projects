package com.commonfiles;

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

import com.pojo.Email;


@WebServlet("/compose_email")
@MultipartConfig(fileSizeThreshold = 1024*1024*2,maxFileSize = 1024*1024*10,maxRequestSize = 1024*1024*50)
public class ComposeEmail extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Part part=request.getPart("file");
		String fileName = FileUpload.getFileNames(part);
		ServletContext context = getServletContext();
		String path=context.getInitParameter("file-upload");
		String savePath ="";
		if(!fileName.equals("")) {
			savePath=path+File.separator+fileName;
			File fileSaveDir =new File(savePath);
			part.write(savePath+File.separator);
		}
		Email e=new Email();
		e.setEto(request.getParameter("composeto"));
		e.setEfrom(request.getParameter("from"));
		e.setEsubject(request.getParameter("subject"));
		e.setEcontent(request.getParameter("content"));
		String pages=request.getParameter("page");
		//boolean status=EmailBean.send(e);
		boolean status1=new SendEmail().sendEmail(e,savePath);
		if(status1)
			response.sendRedirect("compose_email.jsp?page="+pages+"&msg=sent mail");
		else
			response.sendRedirect("compose_email.jsp?page="+pages+"&msg=Failed to send");
	}

}

package com.commonfiles;

import javax.servlet.http.Part;

public class FileUpload {
	public static String getFileNames(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items=contentDisp.split(";");
		for(String s :items) {
			if(s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=")+2,s.length()-1);
			}
		}
		return "";
	}
}

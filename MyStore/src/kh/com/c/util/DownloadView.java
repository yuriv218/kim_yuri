package kh.com.c.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

import kh.com.c.service.CommunityService;
 

public class DownloadView extends AbstractView {

	@Autowired
	CommunityService CommunityService;
	
	public DownloadView() {
		System.out.println("DownloadView 실행!!");
		setContentType("application/download; charset=utf-8"); 
	}
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("DownloadView renderMergedOutputModel 실행!!");
		
		File file = (File)model.get("downloadFile");	// == getAttribute
		response.setContentType(getContentType());
		response.setContentLength((int)file.length());
		
		// IE/chrome
		String userAgent = request.getHeader("user-Agent");
		boolean ie = userAgent.indexOf("MSIE") > -1; // IE		
								// chrome
		String filename = null;
		if(ie) {
			filename = URLEncoder.encode(file.getName(), "utf-8");
		}else {
			filename = new String(file.getName().getBytes("utf-8"), "iso-8859-1");
		}
		
		// download 설정
		response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\";");
		response.setHeader("Content-Transfer-Encoding", "binary");
		response.setHeader("Content-Length", "" + file.length());
		response.setHeader("Pragma", "no-cache;");
		response.setHeader("Expires", "-1;");
		
		OutputStream out = response.getOutputStream();
		FileInputStream fi = null;
		
		fi = new FileInputStream(file);
		FileCopyUtils.copy(fi, out);
		
		int seq = (Integer)model.get("seq");
		// khPdsService.downloadCount(seq);
		
		if(fi != null) {
			fi.close();
		}
		
	}

}








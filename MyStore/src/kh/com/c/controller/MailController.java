package kh.com.c.controller;



import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kh.com.c.service.MemberService;
import kh.com.c.service.impl.MailService;

@Controller
@EnableAsync
public class MailController {
	

	private static final Logger logger 
	= LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberService MemberService;
	
	@Autowired
	private MailService mailService;
	
	@RequestMapping(value="sendMail.do", method={RequestMethod.GET, RequestMethod.POST})
	public String sendSimpleMail(HttpServletRequest request,HttpServletResponse response,String mail, String id)throws Exception {
		logger.info("MailController 메일 전송하기 ");

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		// base64 인코딩
		
		byte[] enId = Base64.encodeBase64(id.getBytes());
		
		
		StringBuffer sb = new StringBuffer();
		
		sb.append("<html><body>");
		sb.append("<meta http-equiv='Content-Type' content='text/html;  charset=euc-kr'>");
		/* 호스팅용
		  sb.append("<a href='http://yuriv218.cafe24.com/checkMail.do?id="+id+"'>");
		*/		
		sb.append("<a href='http://localhost:8090/MyStore/checkMail.do?id="+new String(enId)+"'>");	
		logger.info("id 값: "+ enId);
	
		sb.append("<img src=\"https://user-images.githubusercontent.com/42064351/54694177-26707980-4b6b-11e9-857c-d7aa618e45d8.jpg\">");
		sb.append("</a>");
		sb.append("</body></html>");
		
		String str = sb.toString();
		mailService.sendMail(mail, "회원가입 인증 메일", str);
		
		
		return "regiCheck";
	}
	
	
	//권한 수정 
	@RequestMapping(value="checkMail.do", method={RequestMethod.GET, RequestMethod.POST})
	public String checkMail(String id)throws Exception {
		logger.info("MailController checkMail " + new Date());
		logger.info("MailController checkMail " +id);
		
		// 디코딩
		MemberService.checkMail(new String(Base64.decodeBase64(id)));
		
		
		
		return "redirect:main2.do";
	}
}

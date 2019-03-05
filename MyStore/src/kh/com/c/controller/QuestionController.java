package kh.com.c.controller;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import kh.com.c.model.BbsParam;

import kh.com.c.service.CommunityService;
import kh.com.c.service.MemberService;
 

@Controller
public class QuestionController {

	private static final Logger logger 
	= LoggerFactory.getLogger(QuestionController.class);

	@Autowired
	CommunityService CommunityService;
	
	@Autowired
	MemberService MemberService;


	@RequestMapping(value="question.do", method={RequestMethod.GET, RequestMethod.POST})
	public String question(Model model,String category, BbsParam param) {
	logger.info("QuestionController question " + new Date());

	return "question";
	}

}

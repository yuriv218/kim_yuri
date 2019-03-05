package kh.com.c.controller;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import kh.com.c.model.QnaDto;
import kh.com.c.model.QnaParam;
import kh.com.c.service.MemberService;
import kh.com.c.service.QnaService;

@Controller
public class QnaController {


	private static final Logger logger 
	= LoggerFactory.getLogger(QnaController.class);
	
	@Autowired
	QnaService QnaService;
	
	@Autowired
	MemberService MemberService;
	
	@RequestMapping(value="qnalist.do", method={RequestMethod.GET, RequestMethod.POST})
	public String qnalist(Model model, QnaParam param) {		
		logger.info("QnaController qnalist " + new Date());	
		logger.info("QnaController qnalist " + model.toString());	
		//model.addAttribute("doc_title", "글목록");
		 
		List<QnaDto> qnalist = QnaService.getQnaList();
	//	int totalRecordCount = QnaService.getQnaCount(param);
		model.addAttribute("qnalist", qnalist);
	 
				
		return "qnalist";
	}
	
/*	@RequestMapping(value="enquerylist.do", method={RequestMethod.GET, RequestMethod.POST})
	public String enquerylist(String id, Model model, QnaParam param) {		
		logger.info("QnaController enquerylist " + new Date());	
	 
		//model.addAttribute("doc_title", "글목록");
		 
		List<QnaDto> enquerylist = QnaService.enqueryList(id);
	//	int totalRecordCount = QnaService.getQnaCount(param);
		model.addAttribute("enquerylist", enquerylist);
	 
				
		return "enquerylist";
	}*/
	
	@RequestMapping(value = "qnadetail.do", 
			method = {RequestMethod.GET,
			RequestMethod.POST})
	public String qnadetail(int seq, Model model) throws Exception {
		logger.info("Welcome QnaController qnadetail! "+ new Date());
		QnaDto qna=null;		
		qna=QnaService.getQna(seq);
		model.addAttribute("qna", qna);
		return "qnaDetail";
	}
	
	@RequestMapping(value = "qnawrite.do", method = {RequestMethod.GET,	RequestMethod.POST})
	public String qnawrite(Model model) {
		logger.info("QnaController qnawrite "+ new Date());
		
		model.addAttribute("doc_title", "글쓰기");
		
		return "qnaWrite";
	}
	
	@RequestMapping(value = "qnawriteAf.do", 
			method = RequestMethod.POST)
	public String qnawriteAf(QnaDto qna, Model model) throws Exception {
		if(qna.getContent().equals("") || qna.getTitle().equals("")){
			return "qnaWrite";
		}
		logger.info("Welcome KhqnaController qnawriteAf! "+ new Date());
		QnaService.writeQna(qna);
		return "redirect:/qnalist.do";
	}
	
	@RequestMapping(value = "qnadelete.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String deleteBbs(int seq, Model model) throws Exception {
		logger.info("Welcome QnaController deleteQna! "+ new Date());
		QnaService.deleteQna(seq);
		
		List<QnaDto> qnalist = QnaService.getQnaList();
	 
			model.addAttribute("qnalist", qnalist);
		
		return "forward:/qnalist.do";		
	}
	
	@RequestMapping(value = "qnaupdate.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String qnaupdate(int seq, Model model) throws Exception{
		logger.info("Welcome QnaController qnaupdate! "+ new Date());
		
		QnaDto qna=QnaService.getQna(seq);		
		model.addAttribute("qna", qna);		
		return "qnaUpdate";
	}
	
	@RequestMapping(value = "qnaupdateAf.do", 
			method = RequestMethod.POST)
	public String qnaupdateAf(QnaDto qna,Model model) throws Exception {
		logger.info("Welcome QnaController qnaupdateAf! "+ new Date());
		QnaService.updateQna(qna);
		return "redirect:/qnalist.do";
	}
	
	
	
	
	@RequestMapping(value = "answer.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String answer(int seq, Model model) throws Exception {
		logger.info("Welcome QnaController answer! "+ new Date());
		QnaDto qna=null;		
		qna=QnaService.getQna(seq);
		model.addAttribute("qna", qna);
		return "qnareply";
	}
	
	@RequestMapping(value = "answerAf.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String answerAf(QnaDto qna, Model model) throws Exception {
		logger.info("Welcome QnaController answerAf! "+ new Date());
		QnaService.reply(qna);
		QnaService.updateResult(qna);
		return "redirect:/qnalist.do";
	}
 
}

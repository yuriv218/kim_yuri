package kh.com.c.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.com.c.model.ArticleDto;
import kh.com.c.model.ArticleParam;
import kh.com.c.model.BbsParam;
import kh.com.c.model.CommunityDto;
import kh.com.c.service.ArticleService;
import kh.com.c.service.CommunityService;
import kh.com.c.service.MemberService;
 

@Controller
public class ArticleController {

	private static final Logger logger 
	= LoggerFactory.getLogger(ArticleController.class);

	@Autowired
	CommunityService CommunityService;
	
	@Autowired
	MemberService MemberService;

	@Autowired
	ArticleService AricleService;
	
	@RequestMapping(value="article.do", method={RequestMethod.GET, RequestMethod.POST})
	public String article(HttpServletRequest req,Model model, ArticleParam param,String save) {
	logger.info("ArticleController article " + new Date());

	
	if(param.getCategory() == null) {
		param.setCategory("전체");                                         
	}
	
	if(save != null) {
		if(save.equals("save")) {
			ArticleParam saveSearch = param;
			req.getSession().setAttribute("saveSearch", saveSearch);                                        
		}
	}
	
	// paging 처리
			int sn = param.getPageNumber();
			int start = (sn) * param.getRecordCountPerPage() + 1;
			int end = (sn+1) * param.getRecordCountPerPage();
			
			param.setStart(start);
			param.setEnd(end);
			param.setCategory(param.getCategory());
			
			List<ArticleDto> bbslist = AricleService.getArticlePagingList(param);
			int totalRecordCount = AricleService.getArticleSearch(param);
			
			model.addAttribute("bbslist", bbslist);
			
			model.addAttribute("pageNumber", sn);
			model.addAttribute("pageCountPerScreen", 10);	
			model.addAttribute("recordCountPerPage", param.getRecordCountPerPage());
			model.addAttribute("totalRecordCount", totalRecordCount);
			
			model.addAttribute("search", param.getSearch());
			
			model.addAttribute("category", param.getCategory());
					
			return "article";
	}

	@RequestMapping(value="articleWriteGo.do", method={RequestMethod.GET, RequestMethod.POST})
	public String articleWrite() {
		logger.info("ArticleController articleWrite " + new Date());

		return "articleWrite";
	}
	
	@RequestMapping(value="writeArticle.do", method={RequestMethod.GET, RequestMethod.POST})
	public String writeArticle(Model model,ArticleDto dto) {
		logger.info("ArticleController writeArticle " + new Date());
		logger.info("ArticleController " + dto.getTitle() + new Date());
		logger.info("ArticleController " + dto.getCategory() + new Date());

		AricleService.uploadArticle(dto);
		
		model.addAttribute("message","저장되었습니다");
		model.addAttribute("url","article.do");
		
		return "redirect";	 
	}
	
	@ResponseBody
	@RequestMapping(value="likeIt.do", method={RequestMethod.GET, RequestMethod.POST})
	public int like(int seq)throws Exception  {

		AricleService.likeArticle(seq);
		
		ArticleDto dto =  AricleService.getArticle(seq);
		
		int like = dto.getLikeit();

		return like;
		
	}
}

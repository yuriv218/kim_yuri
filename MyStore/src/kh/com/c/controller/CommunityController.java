package kh.com.c.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import kh.com.c.model.BbsParam;
import kh.com.c.model.ChatDto;
import kh.com.c.model.CommunityDto;
import kh.com.c.model.MemberDto;
import kh.com.c.service.CommunityService;
import kh.com.c.service.MemberService;
 

@Controller
public class CommunityController {

	private static final Logger logger 
	= LoggerFactory.getLogger(CommunityController.class);

	@Autowired
	CommunityService CommunityService;
	
	@Autowired
	MemberService MemberService;

	

	// "테이블 넣는곳" 카테고리로 가는 거
	@RequestMapping(value="datatable.do", method={RequestMethod.GET, RequestMethod.POST})
	public String datatable(Model model,String category, BbsParam param) {
	logger.info("MemberController datatable " + new Date());
	logger.info("MemberController datatable " + param.getS_category());
	logger.info("MemberController datatable 키워드 " + param.getS_keyword());
	
	
	if(category == "") {
		category = "자유게시판";
	}
	
	param.setCategory(category);
	
	// paging 처리
			int sn = param.getPageNumber();
			int start = (sn) * param.getRecordCountPerPage() + 1;
			int end = (sn+1) * param.getRecordCountPerPage();
			
			param.setStart(start);
			param.setEnd(end);
			param.setCategory(category);
			
			List<CommunityDto> bbslist = CommunityService.getBbsPagingList(param);
			int totalRecordCount = CommunityService.getBbsSearch(param);
			model.addAttribute("bbslist", bbslist);
			
			model.addAttribute("pageNumber", sn);
			model.addAttribute("pageCountPerScreen", 10);	
			model.addAttribute("recordCountPerPage", param.getRecordCountPerPage());
			model.addAttribute("totalRecordCount", totalRecordCount);
			
			model.addAttribute("s_category", param.getS_category());
			model.addAttribute("s_keyword", param.getS_keyword());
			model.addAttribute("category", param.getCategory());
					
	
	return "community_bbs";
	}

	//"뭔가 넣는곳 " 카테고리로 가는 거 
	@RequestMapping(value="formsbasic.do", method={RequestMethod.GET, RequestMethod.POST})
	public String formsbasic(HttpServletRequest req,Model model,String word)throws Exception {
	logger.info("MemberController formsbasic " + new Date());
	
	MemberDto login= (MemberDto)req.getSession().getAttribute("login");

    List<MemberDto> address =  MemberService.getAddress();
	
    
	String myaddress = login.getAddress();
	
	if(word==null) {
		word= "없음";
	}
	
	model.addAttribute("word", word);
	model.addAttribute("address", address);
	model.addAttribute("myaddress", myaddress);
	
	return "community_map";
	}

	

	
	@RequestMapping(value="community_write.do", method={RequestMethod.GET, RequestMethod.POST})
	public String community_write(Model model,String category)throws Exception  {
		
		logger.info("CommunityController community_write " + new Date());
		
			model.addAttribute("category", category);
			
			logger.info("community_write " + category);
			
			return "community_write";
	}
	
	@RequestMapping(value="output.do", method={RequestMethod.GET, RequestMethod.POST})
	public String output(Model model,HttpServletRequest req,String title, String c_type, String category, String ir1)throws Exception  {
			
		logger.info("CommunityController output " + new Date());
		
			MemberDto login= (MemberDto)req.getSession().getAttribute("login");
			
			String id = login.getId();
			String store = login.getStore();
		
			
			System.out.println(id);
			System.out.println(store);
			System.out.println(title);
			System.out.println(c_type);
			System.out.println(category);
			System.out.println(ir1);
	
			
			CommunityDto dto = new CommunityDto(id, store, title, ir1, category, c_type, "file");
			
			
			CommunityService.uploadCommunity(dto);
			
			model.addAttribute("category", category);
			
			return "redirect:/datatable.do";
	}
	
	@RequestMapping(value="Cdetail.do", method={RequestMethod.GET, RequestMethod.POST})
	public String Cdetail(int seq,Model model,String category)throws Exception  {
		
		logger.info("CommunityController Cdetail " + new Date());
		
		CommunityDto dto = CommunityService.getCommunity(seq);
		
		MemberDto memdto = MemberService.IDgetMember(dto.getId());
		
		CommunityService.readCountCommunity(seq);
		
		model.addAttribute("bbs", dto);
		
		model.addAttribute("memdto", memdto);
		
		model.addAttribute("category", category);
		
		return "community_detail";
	}
	
	
	@RequestMapping(value="communityUpdate.do", method={RequestMethod.GET, RequestMethod.POST})
	public String communityUpdate(int seq,Model model,String category)throws Exception  {
	
		CommunityDto dto = CommunityService.getCommunity(seq);
		
		model.addAttribute("bbs", dto);
		
		model.addAttribute("category", category);
		
		
		return "community_update";	
	}
	
	@RequestMapping(value="communityUpdateAf.do", method={RequestMethod.GET, RequestMethod.POST})
	public String communityUpdateAf(CommunityDto dto,Model model)throws Exception  {
		
		System.out.println(dto.getId());
		System.out.println(dto.getTitle());
		System.out.println(dto.getContent());
		System.out.println(dto.getC_type());

		CommunityService.updateCommunity(dto);
		
		model.addAttribute("category", dto.getCategory());
		
		return "redirect:/datatable.do";	
		
	}
	
	
	@RequestMapping(value="communityAnswer.do", method={RequestMethod.GET, RequestMethod.POST})
	public String communityAnswer(String category,int seq,Model model)throws Exception  {
		CommunityDto dto = CommunityService.getCommunity(seq);
		
		model.addAttribute("category", category);
		model.addAttribute("bbs", dto);
	return "community_answer";	
	}
	

	
	@RequestMapping(value="communityAnswerAf.do", method={RequestMethod.GET, RequestMethod.POST})
	public String communityAnswerAf(CommunityDto dto,Model model)throws Exception  {
	
		System.out.println(dto.getId());
		System.out.println(dto.getStore());
		System.out.println(dto.getCategory());
		System.out.println(dto.getContent());
		System.out.println(dto.getC_type());
		System.out.println(dto.getFilename());
		
		model.addAttribute("category", dto.getCategory());
		
		
		CommunityService.reply(dto);
	return "redirect:/datatable.do";	
	}
	

	
	@RequestMapping(value="communityDelete.do", method={RequestMethod.GET, RequestMethod.POST})
	public String communityDelete(int seq,Model model)throws Exception  {
	
		System.out.println("시퀀스는?"+seq);
		CommunityService.deleteCommunity(seq);
		
	return "redirect:/datatable.do";	
	}
	
	
	@ResponseBody
	@RequestMapping(value="getMapInfor.do", method={RequestMethod.GET, RequestMethod.POST},produces = "application/json")
	public Map<String, String> getMapInfor(String address,Model model)throws Exception  {
	
		logger.info("CommunityController getMapInfor " + new Date());
		
		MemberDto dto = MemberService.getMapInfor(address);
		
		Map<String, String> rmap = new HashMap<>();
		
		rmap.put("id", dto.getId());
		rmap.put("store", dto.getStore());
		rmap.put("email", dto.getEmail());
		rmap.put("detail", dto.getDetail());
		rmap.put("address", dto.getAddress());
		rmap.put("image", dto.getImage());

		return rmap;
		
	}
	
	@ResponseBody
	@RequestMapping(value="downcount.do", method={RequestMethod.GET, RequestMethod.POST})
	public int downcount(int seq)throws Exception  {
	
		logger.info("CommunityController downcount " + new Date());
		
		logger.info("CommunityController downcount " + seq);
		
		CommunityService.downcountCommunity(seq);
		
		CommunityDto dto =  CommunityService.getCommunity(seq);
		
		int like = dto.getDowncount();

		return like;
		
	}
	
	@ResponseBody
	@RequestMapping(value="send.do", produces = "application/text; charset=utf8" ,method={RequestMethod.GET, RequestMethod.POST})
	public String send(ChatDto dto)throws Exception  {
	

		logger.info("CommunityController send " + new Date());
		logger.info("CommunityController send " + dto.getFromID());
		logger.info("CommunityController send " + dto.getToID());
		logger.info("CommunityController send " + dto.getChatContent());
		logger.info("CommunityController send " + dto.getChatTitle());
		
		
		String m = "빈칸을 채워주세요";
		
		if(dto.getChatContent() != null && dto.getChatTitle() != null) {
		CommunityService.sendM(dto);
		
		m = "쪽지를 전송하였습니다";
		}
		return m;
	}
	
	
	@ResponseBody
	@RequestMapping(value="chat.do", produces = "application/text; charset=utf8" ,method={RequestMethod.GET, RequestMethod.POST})
	public String chat(String id, HttpServletResponse resp)throws Exception  {
		
	  
	 
	  
		return hotelListToJson(id);
	}
	
	//  리스트를 json파일로 만들어주는 함수.
		public String hotelListToJson(String id) {
			StringBuffer result = new StringBuffer("");
			result.append("{\"result\":[");

			  List<ChatDto> dto = CommunityService.receiveM(id);
			
		
			for (int i = 0; i < dto.size(); i++) {
			
				result.append("[{\"value\": \"" + dto.get(i).getSeq() + "\"},");
				result.append("{\"value\": \"" + dto.get(i).getFromID() + "\"},");
				result.append("{\"value\": \"" + dto.get(i).getToID() + "\"},");
				result.append("{\"value\": \"" + dto.get(i).getChatTitle()+ "\"},");
				result.append("{\"value\": \"" + dto.get(i).getChatContent()+ "\"},");
				result.append("{\"value\": \"" + dto.get(i).getChatTime() + "\"}]");
				if(i != dto.size() -1) result.append(",");
			}
			result.append("]}");
			return result.toString();
		}
		
		
		@ResponseBody
		@RequestMapping(value="getimage.do", produces = "application/text; charset=utf8" ,method={RequestMethod.GET, RequestMethod.POST})
		public String getimage(String id)throws Exception  {
		
			String image = MemberService.serchImg(id);
			return image;
		}
		
		@ResponseBody
		@RequestMapping(value="Mdetail.do", method={RequestMethod.GET, RequestMethod.POST},produces = "application/json")
		public Map<String, String> Mdetail(int seq)throws Exception  {
	
			ChatDto dto = CommunityService.Mdetail(seq);
			String image = MemberService.serchImg(dto.getFromID());
			
			Map<String, String> rmap = new HashMap<>();
			
			rmap.put("FromID", dto.getFromID());
			rmap.put("ToID", dto.getToID());
			rmap.put("ChatTitle", dto.getChatTitle());
			rmap.put("ChatContent", dto.getChatContent());
			rmap.put("ChatTime", dto.getChatTime());
			rmap.put("img", image);
		
			
			return rmap;
		}
		
}

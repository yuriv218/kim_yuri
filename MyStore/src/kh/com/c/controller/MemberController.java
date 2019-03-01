package kh.com.c.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mysql.cj.fabric.xmlrpc.base.Array;

import kh.com.c.dao.MemberDao;
import kh.com.c.model.CommunityDto;
import kh.com.c.model.MemberDto;
import kh.com.c.model.YesMember;
import kh.com.c.service.CommunityService;
import kh.com.c.service.MemberService;
import kh.com.c.util.FUpUtil;

@Controller
public class MemberController {

	
	private static final Logger logger 
	= LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberService MemberService;
	
	@Autowired
	CommunityService CommunityService;
	
	@RequestMapping(value="login.do", method={RequestMethod.GET, RequestMethod.POST})
	public String login(Model model) {
		logger.info("MemberController login " + new Date());
		
		return "login";
	}
	@RequestMapping(value="main.do", method={RequestMethod.GET, RequestMethod.POST})
	public String main2(Model model) {
		logger.info("MemberController main " + new Date());
		
		
		return "main";
	}
	
	@RequestMapping(value="main2.do", method={RequestMethod.GET, RequestMethod.POST})
	public String main(Model model) {
		logger.info("MemberController main2 " + new Date());
		
		return "main2";
	}

	@RequestMapping(value="address.do", method={RequestMethod.GET, RequestMethod.POST})
	public String address(Model model) {
		logger.info("MemberController address " + new Date());
		
		return "address";
	}
	
	
/*Auth =  1 관리자 2삭제 3 일반회원 4 인증되지않은 회원 */
	
	@RequestMapping(value="loginAf.do", method={RequestMethod.GET, RequestMethod.POST})
	public String loginAf(HttpServletRequest req, MemberDto mem,Model model,String word)throws Exception {
		logger.info("MemberController loginAf " + new Date());
		
		MemberDto login = MemberService.login(mem);
	//	logger.info("MemberController loginAf 1 " + login.toString());
				
		if(login != null && !login.getId().equals("") && login.getAuth() == 3) {			
			req.getSession().setAttribute("login", login);
			
			// 베스트 글 
			
			List<CommunityDto> list = CommunityService.getBestList("자유게시판");
			List<CommunityDto> list2 = CommunityService.getBestList("홍보");
			List<CommunityDto> list3 = CommunityService.getBestList("QnA");
			
			ArrayList<String> IdImg = new ArrayList<>();
			ArrayList<String> IdImg2 = new ArrayList<>();
			ArrayList<String> IdImg3 = new ArrayList<>();
			
			if(list != null) {
				for (int i = 0; i < list.size(); i++) {
					IdImg.add(MemberService.serchImg(list.get(i).getId()));	
				}
			} 
			if(list2 != null) {
				for (int i = 0; i < list2.size(); i++) {
					IdImg2.add(MemberService.serchImg(list2.get(i).getId()));	
					logger.info("꺄릉"+MemberService.serchImg(list2.get(i).getId()));
					
				}
			}
			if(list3 != null) {
				for (int i = 0; i < list3.size(); i++) {
					IdImg3.add(MemberService.serchImg(list3.get(i).getId()));	
				}
			}
				
				
		    List<MemberDto> address =  MemberService.getAddress();
			
		    
			String myaddress = login.getAddress();
			
			if(word==null) {
				word= "없음";
			}
			
			model.addAttribute("word", word);
			model.addAttribute("address", address);
			model.addAttribute("myaddress", myaddress);
			model.addAttribute("list", list);
			model.addAttribute("list2", list2);
			model.addAttribute("list3", list3);
			model.addAttribute("IdImg", IdImg);
			model.addAttribute("IdImg2", IdImg2);
			model.addAttribute("IdImg3", IdImg3);
			
			return "main";
	
		}else if(login.getAuth() == 4) {
			model.addAttribute("message","인증되지 않은 회원입니다");
			model.addAttribute("url","login.do");
			
			return "redirect";	
		
		}else if(login.getAuth() == 2) {
			model.addAttribute("message","삭제된 회원입니다");
			model.addAttribute("url","login.do");
			
			return "redirect";	
		}
		else {
			model.addAttribute("message","아이디 또는 비밀번호를 잘못 입력하셨습니다");
			model.addAttribute("url","login.do");
			
			return "redirect";
		}
			}
	
	
	@RequestMapping(value="logout.do", method={RequestMethod.GET, RequestMethod.POST})
	public String logout(HttpServletRequest req) {
		logger.info("MemberController logout " + new Date());
	
		req.getSession().setAttribute("login", "");
	
		req.getSession().invalidate();
	//	Object ob =  req.getSession().getAttribute("login");
	//	logger.info("MemberController logout " + ob);

		
		return "redirect:main2.do";
	}
	 
	

	@RequestMapping(value="regi.do", method=RequestMethod.GET)
	public String regi() {
		logger.info("MemberController regi " + new Date());
		
		return "regi";
	}
	
	@RequestMapping(value="regiAf.do", method={RequestMethod.GET, RequestMethod.POST})
	public String regiAf(MemberDto mem,Model model) throws Exception {
		logger.info("MemberController regiAf " + new Date());
		
		logger.info(mem.toString());
				
		boolean b = MemberService.addmember(mem);
		if(b) {
			model.addAttribute("mail", mem.getEmail());
			model.addAttribute("id", mem.getId());
			
			return "redirect:sendMail.do";
		
		}else {
			
			model.addAttribute("message","회원가입 실패");
			model.addAttribute("url","regi.do");
			
			return "redirect";
			}	
		}
 
	

	
	@RequestMapping(value="mypageUpdateAf.do", method=RequestMethod.POST)
	public String mypageUpdateAf(MemberDto mem, Model model,
			HttpServletRequest req, String image,
			@RequestParam(value="upload", required=false)
			MultipartFile fileload) throws Exception{
		logger.info("MemberController mypageUpdateAf " + new Date());
		
		logger.info("MemberController mypageUpdateAf " + mem.toString());
		
		// filename 취득
		mem.setImage(fileload.getOriginalFilename());
		
		// upload 경로
		
		/*String fupload = "D:\\java4\\storewewewewewee4\\WebContent\\tmp";*/
		/*String fupload = "D:\\java4\\storewewewewewee4\\WebContent\\tmp";*/
		
		// tomcat
		String fupload = req.getServletContext().getRealPath("upload");
		
	//	String fupload = "d:\tmp";
		
		logger.info("upload 경로:" + fupload);
		
		if(mem.getImage() !=null && !mem.getImage().equals(""))
		{
		
		
		
		String f = mem.getImage();
		
		// 파일명 현재 날짜+시간으로 변경 
		String newFile = FUpUtil.getNewFile(f);
		
		mem.setImage(newFile);
		try {	
		File file = new File(fupload + "/" + newFile);
		
		System.out.println("파일:" + fupload + "/" + newFile);
		
				
			// 실제 upload 부분
			FileUtils.writeByteArrayToFile(file, fileload.getBytes());
			
			// Db에 저장
			MemberService.mypageUpdate(mem);		
			 
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		else { 
			if(image != null && !image.equals("")) {
		}
				mem.setImage(image);
				MemberService.mypageUpdate(mem);
		}
		 
		// login  세션 갱신 
		MemberDto d = (MemberDto)req.getSession().getAttribute("login");
		
		mem.setId(d.getId());
		mem.setPwd(d.getPwd());
		mem.setName(d.getName());
		mem.setStore(d.getStore());
		mem.setAuth(d.getAuth());
	
		req.getSession().setAttribute("login", mem);
		
		return "redirect:/mypage.do";
	}
	
	
	@RequestMapping(value="mypage.do", method={RequestMethod.GET, RequestMethod.POST})
	public String mypage(Model model, HttpServletRequest req) throws Exception{
		logger.info("MemberController mypage " + new Date());
		
		String dto = ((MemberDto)req.getSession().getAttribute("login")).getId();
		MemberDto mem = MemberService.getMember(dto);
	 
		model.addAttribute("mem", mem);
		
		
	logger.info("MemberController mypage " + new Date());
	 	
	return "mypage";
	}
	

	
	@RequestMapping(value="mypageUpdate.do", method={RequestMethod.GET, RequestMethod.POST})
	public String mypageUpdate(String id, Model model) throws Exception{
	logger.info("MemberController mypageUpdate " + new Date());
	MemberDto mem = MemberService.getMember(id);
	model.addAttribute("mem", mem);
	
	 
	return "mypageUpdate";
} 
	
	
	/////////////////////////////////////여기부분 바꿔야됨
	@RequestMapping(value="passwordChange.do", method={RequestMethod.GET, RequestMethod.POST})
	public String passwordChange(Model model,String id) throws Exception{
	logger.info("MemberController passwordChange " + new Date());
		
	List<MemberDto> mypagelist = MemberService.getMypageList();
	model.addAttribute("mypagelist", mypagelist);
	
	return "passwordChange";
 
	}
	
	@RequestMapping(value="passwordChangeAf.do", method=RequestMethod.POST)
	public String passwordChangeAf(MemberDto mem, Model model) throws Exception{
		logger.info("MemberController passwordChangeAf " + new Date());
		logger.info("MemberController passwordChangeAf " + mem.toString());
		
		MemberService.updatePassword(mem);
		
		return "redirect:/mypage.do";
	}
	
	
	@ResponseBody
	@RequestMapping(value="getID.do", method={RequestMethod.GET, RequestMethod.POST})
	public YesMember getID(MemberDto mem) {
		logger.info("KhMemberController getID " + new Date());
		
		int count = MemberService.getID(mem);
		
		YesMember yes = new YesMember();
		if(count > 0) {
			yes.setMessage("YES");
		}else {
			yes.setMessage("NO");
		}
		return yes;		
	}
	
	@RequestMapping(value="getMemberlist.do", method={RequestMethod.GET, RequestMethod.POST})
	public String getMember(Model model) {
		logger.info("MemberController getMemberlist " + new Date());
		List<MemberDto> memberlist = MemberService.getMemberList();
		
		model.addAttribute("memberlist", memberlist);
		
		return "memManage";
	
}
	
	@RequestMapping(value = "deleteMember.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String deleteMember(String id, Model model) throws Exception {
		logger.info("Welcome MemberController deleteMember! "+ new Date());
		logger.info("Welcome MemberController deleteMember! "+ id);
		MemberService.deleteMember(id);
		
		List<MemberDto> memberlist = MemberService.getMemberList();
	 
			model.addAttribute("memberlist", memberlist);
		
		return "forward:/getMemberlist.do";		
	}
	
	@RequestMapping(value="serchImg.do", method={RequestMethod.GET, RequestMethod.POST})
	public String serchImg(String id, Model model) {
		logger.info("MemberController serchImg  " + new Date());
		
		String mem = "./tmp/" + MemberService.serchImg(id);
		logger.info("MemberController serchImg  " + mem.toString());
		
		return mem;
	}
	
	
	@RequestMapping(value="idCheck.do", method={RequestMethod.GET, RequestMethod.POST})
	   public @ResponseBody String idCheck(String id)throws Exception{
	      logger.info("MemberController idCheck " + new Date());
	      logger.info("MemberController idCheck " + id);
	      
	      int idCount = MemberService.idCheck(id);
	      
	      logger.info("MemberController idCount = " + idCount);
	      
	      return String.valueOf(idCount);
	   }
		
}

package kh.com.c.controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
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
//import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndView;

import kh.com.c.model.CustomerDto;
import kh.com.c.model.MemberDto;
import kh.com.c.model.SearchParam;
//import kh.com.c.model.StockDto;
import kh.com.c.service.CustomerService;

@Controller
public class CustomerController {

	private static final Logger logger = LoggerFactory.getLogger(CustomerController.class);

	@Autowired
	CustomerService CustomerService;

	@RequestMapping(value = "customer.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String customerList(Model model, HttpServletRequest req, SearchParam param) {
		logger.info("CustomerController customerList 실행");

		// 로그인 된 회원의 가게이름
		String loginStore = ((MemberDto) req.getSession().getAttribute("login")).getStore();
		logger.info("거래처 리스트를 받아올 회원 가게 이름 : " + loginStore);

		// paging 처리
		int sn = param.getPageNumber();
		int start = (sn) * param.getRecordCountPerPage() + 1;
		int end = (sn + 1) * param.getRecordCountPerPage();

		param.setStart(start);
		param.setEnd(end);
		param.setStore(loginStore);

		// db에서 거래처 리스트를 가져오기 + 페이징
		List<CustomerDto> list = CustomerService.customerPageList(param);
		int totalCustomerCount = CustomerService.getCustomerCount(param);
		model.addAttribute("customerList", list);

		model.addAttribute("pageNumber", sn);
		model.addAttribute("pageCountPerScreen", 10);
		model.addAttribute("recordCountPerPage", param.getRecordCountPerPage());
		model.addAttribute("totalRecordCount", totalCustomerCount);

		model.addAttribute("s_category", param.getS_category());
		model.addAttribute("s_keyword", param.getS_keyword());
		
		model.addAttribute("loginStore", loginStore);

		return "client";
	}

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="customer.do", method={RequestMethod.GET,
	 * RequestMethod.POST}) public Object customerList(Model model,
	 * HttpServletRequest req, HttpServletResponse res) { //로그인 된 회원의 가게이름 String
	 * loginStore = ((MemberDto)req.getSession().getAttribute("login")).getStore();
	 * logger.info("거래처 리스트를 받아올 회원 가게 이름 : " + loginStore);
	 * 
	 * //db에서 거래처 리스트를 가져오기 List<CustomerDto> list =
	 * CustomerService.customerList(loginStore);
	 * 
	 * 
	 * }
	 */

	@RequestMapping(value = "customerInsert.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String customerInsert(Model model, HttpServletRequest req) {
		logger.info("CustomerController customerInsert 실행");

		// 로그인 된 회원의 가게이름
		String loginStore = ((MemberDto) req.getSession().getAttribute("login")).getStore();
		logger.info("거래처 리스트를 받아올 회원 가게 이름 : " + loginStore);

		model.addAttribute("loginStore", loginStore);

		return "customerInsert";
	}

	/*
	 * @RequestMapping(value="customerInsertAf.do", method={RequestMethod.GET,
	 * RequestMethod.POST}) public String customerInsertAf(CustomerDto customer,
	 * Model model) { logger.info("CustomerController customerInsertAf 실행");
	 * 
	 * //db에 추가 CustomerService.customerInsert(customer);
	 * 
	 * //db에서 거래처 수 가져오기 int clientCount =
	 * CustomerService.clientCount(customer.getStore());
	 * model.addAttribute("clientCount", clientCount);
	 * 
	 * return "redirect:/customer.do"; }
	 */

	@ResponseBody
	@RequestMapping(value = "customerInsertAf.do", method = { RequestMethod.GET, RequestMethod.POST })
	public int customerInsertAf(CustomerDto customer, Model model) {
		logger.info("CustomerController customerInsertAf 실행");

		// db에 추가
		CustomerService.customerInsert(customer);

		// seq번호 받아오기
		int seq = CustomerService.clientSeq(customer);

		return seq;
	}

	@RequestMapping(value = "customerDel.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String customerDel(int seq, HttpServletRequest req, Model model) {
		logger.info("CustomerController customerDel 실행");
		logger.info("customerDel seq = " + seq);

		// 삭제실행
		CustomerService.customerDel(seq);

		// 로그인 된 회원의 가게이름
		String loginStore = ((MemberDto) req.getSession().getAttribute("login")).getStore();
		logger.info("재고 리스트를 받아올 회원 가게 이름 (stockDel): " + loginStore);

		// db에서 거래처 리스트를 가져오기
		//List<CustomerDto> list = CustomerService.customerList(loginStore);

		// 리스트 날려주기
		//model.addAttribute("customerList", list);

		// 거래처 리스트로 돌아가기
		return "forward:/customer.do";
	}

	@RequestMapping(value = "customerDetail.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String customerDetail(int seq, Model model) {
		logger.info("CustomerController customerDetail 실행");
		logger.info("customerDetail seq = " + seq);

		// 거래처 디테일 db에서 가져오기
		CustomerDto customer = CustomerService.customerDetail(seq);

		// 거래처 디테일 날려주기
		model.addAttribute("customer", customer);

		// 디테일 페이지로 이동
		return "customerDetail";
	}

	@RequestMapping(value = "customerUpdate.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String customerUpdate(int seq, Model model) {
		logger.info("CustomerController customerUpdate 실행");
		logger.info("customerUpdate seq = " + seq);

		// 거래처 디테일 db에서 가져오기
		CustomerDto customer = CustomerService.customerDetail(seq);

		// 거래처 디테일 뿌려주기
		model.addAttribute("customer", customer);

		// 수정하는 화면으로 이동
		return "customerUpdate";
	}

	@RequestMapping(value = "customerUpdateAf.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String customerUpdateAf(CustomerDto customer, Model model) {
		logger.info("CustomerController customerUpdateAf 실행");
		logger.info("customerUpdate customer = " + customer.toString());

		// 수정하기
		CustomerService.customerUpdate(customer);

		return "redirect:/customer.do";
	}
	
	@RequestMapping(value = "customerStarOnly.do", method = { RequestMethod.GET, RequestMethod.POST })
	   public String customerStarOnly(Model model, HttpServletRequest req, SearchParam param) {
	      logger.info("CustomerController customerStarOnly 실행");
	      
	      // 로그인 된 회원의 가게이름
	      String loginStore = ((MemberDto) req.getSession().getAttribute("login")).getStore();
	      logger.info("거래처 리스트를 받아올 회원 가게 이름 : " + loginStore);

	      // paging 처리
	      int sn = param.getPageNumber();
	      int start = (sn) * param.getRecordCountPerPage() + 1;
	      int end = (sn + 1) * param.getRecordCountPerPage();

	      param.setStart(start);
	      param.setEnd(end);
	      param.setStore(loginStore);

	      // db에서 거래처 리스트를 가져오기 + 페이징
	      List<CustomerDto> list = CustomerService.customerStarOnly(param);
	      int totalCustomerCount = CustomerService.customerStarCount(param);
	      model.addAttribute("customerList", list);

	      model.addAttribute("pageNumber", sn);
	      model.addAttribute("pageCountPerScreen", 10);
	      model.addAttribute("recordCountPerPage", param.getRecordCountPerPage());
	      model.addAttribute("totalRecordCount", totalCustomerCount);

	      model.addAttribute("s_category", param.getS_category());
	      model.addAttribute("s_keyword", param.getS_keyword());
	            
	      model.addAttribute("loginStore", loginStore);
	      
	      model.addAttribute("starOnly", "starOnly");
	   
	      return "client";
	   }

	@ResponseBody
	   @RequestMapping(value = "star.do", method = { RequestMethod.GET, RequestMethod.POST })
	   public int star(int seq) {
	      logger.info("CustomerController star 실행");
	      logger.info("CustomerController seq = "+seq);
	      
	      //0이면 안 중요 1이면 중요
	      int star = CustomerService.star(seq);
	      
	      return star;
	   }
	
	@ResponseBody
	   @RequestMapping(value = "starUpdate.do", method = { RequestMethod.GET, RequestMethod.POST })
	   public int starUpdate(CustomerDto customer) {
	      
	      logger.info("CustomerController starUpdate 실행");
	      //logger.info(customer.toString());
	      
	      //별 업데이트 1->0   0->1
	      CustomerService.starUpdate(customer);
	      
	      //업데이트 후 수정된 별의 결과를 가져옴
	      int star = CustomerService.star(customer.getSeq());
	      
	      //0이면 안 중요 1이면 중요
	      logger.info("CustomerController star = "+star);
	      
	      return star;
	   }

}

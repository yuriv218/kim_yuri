package kh.com.c.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.com.c.model.MemberDto;
import kh.com.c.model.SearchParam;
import kh.com.c.model.StockDto;
import kh.com.c.service.StockService;

@Controller
public class StockController {

	
	private static final Logger logger 
	= LoggerFactory.getLogger(StockController.class);
	
	@Autowired
	StockService StockService; 
	
	// 가게 관리 - 상품 관리
	// 상품 리스트 가져오기
	@RequestMapping(value="goodslist.do", method={RequestMethod.GET, RequestMethod.POST})
	public String goodslist(Model model, HttpServletRequest req)
	{
		logger.info("StockController goodslist " + new Date());	
		
		//model.addAttribute("doc_title", "상품 리스트");
		
		// 로그인된 아이디의 가게명 취득
		String storename = ((MemberDto)req.getSession().getAttribute("login")).getStore();

		List<StockDto> slist = StockService.getGoodsList(storename);
				
		model.addAttribute("stlist", slist);
		
		return "goodslist";
	}
	
	// modal창으로 사용x
	// 가게 관리 - 상품 관리
	// 상품 추가
	@RequestMapping(value="addgoods.do", method={RequestMethod.GET, RequestMethod.POST})
	public String addgoods(Model model)
	{
		logger.info("StockController addgoods " + new Date());	
		
		//model.addAttribute("doc_title", "상품 추가");
		
		return "addgoods";
	}
	
	// 가게 관리 - 상품 관리
	// 상품 추가 완료
	@RequestMapping(value="addgoodsAf.do", method={RequestMethod.GET, RequestMethod.POST})
	public String addgoodsAf(Model model, StockDto stock)
	{
		logger.info("StockController addgoodsAf " + new Date());	
		
		//model.addAttribute("doc_title", "상품 추가");
		
		StockService.addGoods(stock);
		
		return "redirect:/goodslist.do";
	}
	
	// 가게 관리 - 상품 관리
	// 상품 삭제
	@RequestMapping(value="delgoods.do", method={RequestMethod.GET, RequestMethod.POST})
	public String delgoods(Model model, int seq)
	{
		logger.info("StockController delgoods " + new Date());	
		
		logger.info("seq = " + seq);
		
		//model.addAttribute("doc_title", "상품 삭제");
		
		StockService.delGoods(seq);
		
		return "redirect:/goodslist.do";
	}
	
	// 가게 관리 - 상품 관리
	// 상품 수정
	@RequestMapping(value="updategoods.do", method={RequestMethod.GET, RequestMethod.POST})
	public String updategoods(Model model, int seq)
	{
		logger.info("StockController updategoods " + new Date());	
		
		logger.info("seq = " + seq);
		
		//model.addAttribute("doc_title", "상품 수정");
		
		StockDto stock = StockService.getGoods(seq);
		
		model.addAttribute("stock", stock);
		
		return "updategoods";
		
	}
	
	// 가게 관리 - 상품 관리
	// 상품 수정 완료
	@RequestMapping(value="updategoodsAf.do", method={RequestMethod.GET, RequestMethod.POST})
	public String updategoodsAf(Model model, StockDto stock)
	{
		logger.info("StockController updategoodsAf " + new Date());	
		
		logger.info(stock.toString());
		
		//model.addAttribute("doc_title", "상품 수정 완료");
		
		StockService.updateGoods(stock);
		
		return "redirect:/goodslist.do";
		
	}
	
	
	
	// 재고 리스트 불러오기
		/*
		 * @RequestMapping(value="stock.do", method={RequestMethod.GET,
		 * RequestMethod.POST}) public String stocklist(Model model, HttpServletRequest
		 * req) {
		 * 
		 * logger.info("StockController stocklist " + new Date());
		 * 
		 * //로그인 된 회원의 가게이름 String loginStore =
		 * ((MemberDto)req.getSession().getAttribute("login")).getStore();
		 * logger.info("재고 리스트를 받아올 회원 가게 이름 : " + loginStore);
		 * 
		 * //로그인된 회원의 재고 리스트 받아오기 List<StockDto> stocklist =
		 * StockService.stoklist(loginStore);
		 * 
		 * //재고 품목개수 받아오기 int stockCount = StockService.stockCount(loginStore);
		 * 
		 * //재고 리스트 날려주기 model.addAttribute("stocklist", stocklist);
		 * model.addAttribute("stockCount", stockCount);
		 * 
		 * return "stock"; }
		 */
		@RequestMapping(value = "stock.do", method = { RequestMethod.GET, RequestMethod.POST })
		public String stocklist(Model model, HttpServletRequest req, SearchParam param) {
			logger.info("StockController stocklist " + new Date());

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

			List<StockDto> list = StockService.stockPageList(param);
			int totalCustomerCount = StockService.getStockCount(param);
			model.addAttribute("stocklist", list);

			model.addAttribute("pageNumber", sn);
			model.addAttribute("pageCountPerScreen", 10);
			model.addAttribute("recordCountPerPage", param.getRecordCountPerPage());
			model.addAttribute("totalRecordCount", totalCustomerCount);

			model.addAttribute("s_keyword", param.getS_keyword());

			model.addAttribute("loginStore", loginStore);

			return "stock";

		}

		// 재고 수정
		@RequestMapping(value = "stockUpdate.do", method = { RequestMethod.GET, RequestMethod.POST })
		public String stockUpdate(StockDto stock) {
			logger.info("StockController stockUpdate " + new Date());

			// 수정할 회원의 가게명
			logger.info("storeUpdate store " + stock.getStore());

			// 수정할 stockDto
			System.out.println("수정할 dto : " + stock.toString());

			// 수정
			StockService.stockUpdate(stock);

			// 수정 결과가 반영된 재고 리스트 띄우기
			return "redirect:/stock.do";

		}

		// 재고 삭제

		@RequestMapping(value = "stockDel.do", method = { RequestMethod.GET, RequestMethod.POST })
		public String stockDel(Model model, int seq, HttpServletRequest req) {
			logger.info("StockController stockDel " + new Date());

			// 삭제할 재고의 seq
			logger.info("stockUpdate seq = " + seq);

			// 재고 삭제
			StockService.stockDel(seq);

			// 로그인 된 회원의 가게이름
			String loginStore = ((MemberDto) req.getSession().getAttribute("login")).getStore();
			logger.info("재고 리스트를 받아올 회원 가게 이름 (stockDel): " + loginStore);

			// 삭제가 반영된 재고 리스트를 띄워주기
			return "forward:/stock.do";
		}

		@ResponseBody
		@RequestMapping(value = "stockAmountUp.do", method = { RequestMethod.GET, RequestMethod.POST })
		public int stockAmountUp(int seq) {
			logger.info("StockController stockAmountUp " + new Date());
			logger.info("StockController stockAmountUp seq = " + seq);

			// 재고 증가
			StockService.stockAmountUp(seq);
			int amountAf = StockService.stockAmountCheck(seq);
			logger.info("StockController stockAmountDown amount = " + amountAf);

			// 증가된 재고량을 리턴
			return amountAf;

		}

		@ResponseBody
		@RequestMapping(value = "stockAmountDown.do", method = { RequestMethod.GET, RequestMethod.POST })
		public int stockAmountDown(int seq, Model model) {
			logger.info("StockController stockAmountDown " + new Date());
			logger.info("StockController stockAmountDown seq = " + seq);

			// 재고 감소
			StockService.stockAmountDown(seq);
			int amountAf = StockService.stockAmountCheck(seq);
			logger.info("StockController stockAmountDown amount = " + amountAf);

			// 감소된 재고량을 리턴
			return amountAf;

		}
		
		//soldOutList
	      @ResponseBody
	      @RequestMapping(value = "soldoutList.do", produces = "application/text; charset=utf8", method = { RequestMethod.GET, RequestMethod.POST })
	      public String soldOutList(HttpServletRequest req, HttpServletResponse response){
	         
	         
	         String loginStore = ((MemberDto) req.getSession().getAttribute("login")).getStore();
	         logger.info("품절 리스트를 받아올 회원 가게 이름): " + loginStore);
	         
	         if(loginStore == null || loginStore == "") {
	            return "no";
	         }else {
	            List<StockDto> soldOutList = StockService.soldoutList(loginStore);
	            

	            JSONArray arr = new JSONArray();
	            
	            for (int i = 0; i < soldOutList.size(); i++) {
	               StockDto stock = soldOutList.get(i);
	               
	               JSONObject obj = new JSONObject();
	               
	               String product = stock.getProduct();
	               try {
	                  URLEncoder.encode(product, "UTF-8");
	                  obj.put("product", product);
	                  obj.put("amount", stock.getAmount());
	                  obj.put("price", stock.getPrice());
	                  
	                  arr.add(obj);
	                  
	               } catch (UnsupportedEncodingException e) {
	                  // TODO Auto-generated catch block
	                  e.printStackTrace();
	               }
	                     
	               
	            }
	            
	            logger.info("파싱 데이터 : " + arr.toJSONString());
	            return arr.toJSONString();
	         }
	         
	         
	      }
	      
	      
	      @RequestMapping(value = "soldoutAll.do", method = { RequestMethod.GET, RequestMethod.POST })
	      public String soldoutAll(Model model, HttpServletRequest req, SearchParam param) {
	         // 로그인 된 회원의 가게이름
	            String loginStore = ((MemberDto) req.getSession().getAttribute("login")).getStore();
	            logger.info("품절 임박한 리스트만  받아올 회원 가게 이름 : " + loginStore);

	            // paging 처리
	            int sn = param.getPageNumber();
	            int start = (sn) * param.getRecordCountPerPage() + 1;
	            int end = (sn + 1) * param.getRecordCountPerPage();

	            param.setStart(start);
	            param.setEnd(end);
	            param.setStore(loginStore);
	            
	         // db에서 거래처 리스트를 가져오기 + 페이징
	            List<StockDto> list = StockService.soldoutOnlyList(param);
	            int totalCustomerCount = StockService.soldoutOnlyCount(param);
	            model.addAttribute("stocklist", list);

	            model.addAttribute("pageNumber", sn);
	            model.addAttribute("pageCountPerScreen", 10);
	            model.addAttribute("recordCountPerPage", param.getRecordCountPerPage());
	            model.addAttribute("totalRecordCount", totalCustomerCount);
	            
	            model.addAttribute("s_keyword", param.getS_keyword());
	                  
	            model.addAttribute("loginStore", loginStore);
	            
	            model.addAttribute("soldout", "soldout");
	         
	            return "stock";
	            
	      }
	
}

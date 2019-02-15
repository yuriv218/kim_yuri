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

import kh.com.c.model.BookDto;
import kh.com.c.model.Calparam;
import kh.com.c.model.MemberDto;
import kh.com.c.service.BookService;
import kh.com.c.util.CalendarUtil;
import kh.com.c.util.DateUtil;
import kh.com.c.util.myCal;

@Controller
public class BookController {
	
	private static final Logger logger 
	= LoggerFactory.getLogger(BookController.class);
	
	@Autowired
	BookService BookService;
	
	// 가게 관리 - 예약관리
	// 예약 리스트 가져오기
	// 예약 추가 modal창으로 띄우기
	@RequestMapping(value="booklist.do", method={RequestMethod.GET, RequestMethod.POST})
	public String booklist(Model model, HttpServletRequest req, myCal jcal)
	{
		logger.info("BookController booklist " + new Date());	
		
		//model.addAttribute("doc_title", "예약 현황");
		
		// 로그인된 아이디에서 가게명 받아오는 부분
		String storename = ((MemberDto)req.getSession().getAttribute("login")).getStore();
		
		// 날짜 형식 변경
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyyMMddHHmmss");
		
		// 오늘날짜 받아오는 부분
		String today = formatter.format(new java.util.Date());
		
		// db에 저장된 날짜 받아서 보내주는 부분
		jcal.calculate();
		model.addAttribute("jcal", jcal);
		
		// 오늘 날짜
		model.addAttribute("today", today);
		logger.info(today);
		
		// db에서 가게명 통해서 가져온 정보 저장후 보내주는 부분
		List<BookDto> blist = BookService.getBookList(storename);
		
		model.addAttribute("booklist", blist);		
		
		return "booklist";
	}
	
	// modal로 변경해서 사용 x
	// 가게 관리 - 예약관리
	// 예약 리스트 추가 
	@RequestMapping(value="addbook.do", method={RequestMethod.GET, RequestMethod.POST})
	public String addbook(Model model, myCal jcal)
	{
		logger.info("BookController addbook " + new Date());
		
		//model.addAttribute("doc_title", "예약 추가");
		
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyyMMddHHmmss");
		String today = formatter.format(new java.util.Date());
		
		logger.info(today);
		
		model.addAttribute("today", today);
		
		jcal.calculate();
		model.addAttribute("jcal", jcal);
		
		return "addbook";
	}
	
	
	// 가게 관리 - 예약관리
	// 예약 리스트 추가  완료
	@RequestMapping(value="addbookAf.do", method={RequestMethod.GET, RequestMethod.POST})
	public String addbookAf(Model model, Calparam cal)
	{
		logger.info("BookController addbookAf " + new Date());
		
		//model.addAttribute("doc_title", "예약 추가");
		
		logger.info(cal.toString());
		
		DateUtil du = new DateUtil();
		
	//	String bdate = du.toDate(cal.getYear(), cal.getMonth(), cal.getDay()) +"";
		String syear = cal.getYear() +"";
		String smonth = du.two(cal.getMonth() +"");
		String sday = du.two(cal.getDay() + "");
		String shour = du.two(cal.getHour() + "");
		String smin = du.two(cal.getMin() + "");
		
		String bdate = syear + smonth + sday + shour + smin;
		
		BookDto book = new BookDto(cal.getStore(), cal.getB_name(), bdate, cal.getContent());
		
		BookService.addBook(book);
		
		return "redirect:/booklist.do";		
	}

	// 가게 관리 - 예약관리
	// 예약 디테일 보기
	@RequestMapping(value="bookdetail.do", method={RequestMethod.GET, RequestMethod.POST})
	public String bookdetail(Model model, int seq) throws Exception
	{
		logger.info("BookController bookdetail " + new Date());
		
		//model.addAttribute("doc_title", "예약 디테일");
		
		BookDto book = BookService.getDetail(seq);
		
		// 201812031001 형식으로 된거 년/월/일/시/분 으로 잘라주기
		book.getB_date();
		
		String year = book.getB_date().substring(0, 4);
		String month = book.getB_date().substring(4, 6);
		String day = book.getB_date().substring(6, 8);
		String hour = book.getB_date().substring(8, 10);
		String min = book.getB_date().substring(10, 12);
		
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("day", day);
		model.addAttribute("hour", hour);
		model.addAttribute("min", min);

		model.addAttribute("book", book);
		
		return "bookdetail";
	}
	
	// 가게 관리 - 예약관리
	// 예약 삭제
	@RequestMapping(value="deletebook.do", method={RequestMethod.GET, RequestMethod.POST})
	public String deletebook(Model model, int seq)
	{
		logger.info("BookController deletebook " + new Date());
		
		//model.addAttribute("doc_title", "예약 삭제");
		
		BookService.deletebook(seq);
				
		return "redirect:/booklist.do";
	}

	// 가게 관리 - 예약관리
	// 예약 수정 
	@RequestMapping(value="updatebook.do", method={RequestMethod.GET, RequestMethod.POST})
	public String updatebook(Model model, int seq, myCal jcal) throws Exception
	{
		logger.info("BookController updatebook " + new Date());
		
		//model.addAttribute("doc_title", "예약 수정");
		
		logger.info("seq : " + seq);
		
		jcal.calculate();
		
		BookDto book = BookService.getDetail(seq);
		
		logger.info(book.toString());
		
		model.addAttribute("book", book);
		
		// 201812031001 형식으로 된거 년/월/일/시/분 으로 잘라주기
		book.getB_date();
		
		String year = book.getB_date().substring(0, 4);
		String month = book.getB_date().substring(4, 6);
		String day = book.getB_date().substring(6, 8);
		String hour = book.getB_date().substring(8, 10);
		String min = book.getB_date().substring(10, 12);
		
		int tyear = Integer.parseInt(year);
		int tmonth = Integer.parseInt(month);
		int tday = Integer.parseInt(day);
		int thour = Integer.parseInt(hour);
		int tmin = Integer.parseInt(min);
		
		jcal.setYear(tyear);
		jcal.setMonth(tmonth);
		jcal.setDay(tday);
		jcal.setHour(thour);
		jcal.setMin(tmin);
				
		logger.info(jcal.toString());
		model.addAttribute("jcal", jcal);
		
		return "updatebook";
	}
	
	// 가게 관리 - 예약관리
	// 예약 수정 완료
	@RequestMapping(value="updatebookAf.do", method=RequestMethod.POST)
	public String updatebookAf(Model model, myCal jcal, Calparam cal) throws Exception
	{
		logger.info("BookController updatebookAf " + new Date());
		
		//model.addAttribute("doc_title", "예약 수정");
		
		logger.info(jcal.toString());
		logger.info(cal.toString());
		
		// 년/월/일 각각 받아온 날짜 합치는 과정
		DateUtil du = new DateUtil();
		
		//	String bdate = du.toDate(cal.getYear(), cal.getMonth(), cal.getDay()) +"";
		String syear = jcal.getYear() +"";
		String smonth = du.two(jcal.getMonth() +"");
		String sday = du.two(jcal.getDay() + "");
		String shour = du.two(jcal.getHour() + "");
		String smin = du.two(jcal.getMin() + "");
			
		String bdate = syear + smonth + sday + shour + smin;
			
		BookDto book = new BookDto(cal.getSeq(), cal.getStore(), cal.getB_name(), bdate, cal.getContent());
		
		logger.info(book.toString());	
		
		BookService.updatebook(book);
		
		return "redirect:/booklist.do";
	}
}

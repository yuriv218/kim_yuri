package kh.com.c.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;

import kh.com.c.model.MemberDto;
import kh.com.c.model.MoneyDto;
import kh.com.c.model.MoneyGoalDto;
import kh.com.c.model.MoneyParam;
import kh.com.c.model.MontlyChartDto;
import kh.com.c.model.MontlyChartDto2;
import kh.com.c.model.MontlyChartDto3;
import kh.com.c.model.YesMember;
import kh.com.c.service.MoneyService;
import kh.com.c.util.CalendarUtil;

@Controller
public class MoneyController {

	private static final Logger logger 
	= LoggerFactory.getLogger(MoneyController.class);
	
	@Autowired
	MoneyService MoneyService; 
	
	@ResponseBody
	@RequestMapping(value="mainChart.do", method= {RequestMethod.GET, RequestMethod.POST})
	public int mainChart(Model model, HttpServletRequest req, MoneyParam param) throws Exception {
		logger.info("MoneyController mainChart " + new Date());
		logger.info("**requested param  : " + param.toString());
		
		int data = MoneyService.getChartData(param);

		return data;
		
		}
		
		
		// model.addAttribute("list", list);
	@ResponseBody
	@RequestMapping(value="getGoal.do", produces = "application/text; charset=utf8", method= {RequestMethod.GET, RequestMethod.POST})
	public String getGoal(HttpServletRequest req) throws Exception {
		logger.info("MoneyController getGoal " + new Date());
	//	logger.info("**requested param  : " + param.toString());
		String id = ((MemberDto)req.getSession().getAttribute("login")).getId();

		String data;
		if(id == null || id == "") {
			return "no";
		} else {
			MoneyGoalDto goal = MoneyService.getGoal(id);
			logger.info("**goal : " + goal);
			JSONObject obj = new JSONObject();
			
			
			if(goal == null) {
				obj.put("msg", "no");
				data = obj.toJSONString();
			} else {
			
			obj.put("perWeek", goal.getPerWeek());
			obj.put("perMonth", goal.getPerMonth());
			obj.put("perYear", goal.getPerYear());
			obj.put("perWeek_pure", goal.getPerWeek_pure());
			obj.put("perMonth_pure", goal.getPerMonth_pure());
			obj.put("perYear_pure", goal.getPerYear_pure());
			
			data = obj.toJSONString();
			}
			
		}
		
		logger.info("json data : " + data);
		
		return data;
		
		}
		
			
	

	@RequestMapping(value="chart.do", method={RequestMethod.GET, RequestMethod.POST})
	public String chart(Model model, HttpServletRequest req, String Sstartdate, String Senddate) {
		logger.info("MoneyController chart " +  new Date());
		
		String id = ((MemberDto)req.getSession().getAttribute("login")).getId();
		List<MoneyDto> list = MoneyService.getMoney(id);							// 로그인한 id로 가게의 MoneyList 출력
		
		
	/*	List<MoneyDto> list = MoneyService.getMoney("aaaa");		// 임시
*/		List<MoneyDto> RealList= new ArrayList<>();
		int sdate = 0;
		int edate = 0;
		
		if(Sstartdate == null || Senddate == null) { 	// null일 경우 오늘날짜로 설정
			sdate = CalendarUtil.CalDate();
			edate = CalendarUtil.CalDate();
		}else {
			 sdate = CalendarUtil.Replace(Sstartdate);
			 edate = CalendarUtil.Replace(Senddate);	
		}

		System.out.println("sdate" + sdate);
		System.out.println("edate" + edate);
		
		for(int i = 0 ; i < list.size() ; i++) {
			
			String _date = list.get(i).getM_date();		// DB에 들어있는 날짜
			int date = CalendarUtil.Replace(_date);	
			
			if(date >= sdate && date <= edate) {
				RealList.add(list.get(i));
			}
		}
		
		// 추가
		List<MoneyDto> trueRealList = new ArrayList<>();
		trueRealList = CalendarUtil.removeOverlap(RealList);
		model.addAttribute("list", trueRealList);	
		
		
		
		
		MontlyChartDto3 payment = CalendarUtil.payment(RealList);	// 카드 현금
		model.addAttribute("payment", payment);
		
		
	//	model.addAttribute("list", RealList);
		
		List<MoneyDto> sales = CalendarUtil.table1(RealList);	// 테이블 매출
		List<MoneyDto> product = CalendarUtil.table2(RealList);	// 테이블 매입		
		model.addAttribute("sales", sales);
		model.addAttribute("product", product);
		
		model.addAttribute("sdate", CalendarUtil.Date(sdate));
		model.addAttribute("edate", CalendarUtil.Date(edate));

		return "chart";
	}
	
	
	@RequestMapping(value="montlychart.do", method={RequestMethod.GET, RequestMethod.POST})
	public String montlychart(Model model, String year,  HttpServletRequest req) {
		
		Calendar cal = Calendar.getInstance();
		
		if(year == null) {
			year  = cal.get(Calendar.YEAR) + "";
		}
		
		System.out.println(year);		
		
		MontlyChartDto dto = CalendarUtil.montlyDate(year);
		
/*		String id = ((MemberDto)req.getSession().getAttribute("login")).getId();
		MontlyChartDto dto = new MontlyChartDto(id, year);
		
		*/
		
		String id = ((MemberDto)req.getSession().getAttribute("login")).getId();
		MontlyChartDto _dto = new MontlyChartDto(id, dto.getSyear(), dto.getEyear());	// 임시
		List<MoneyDto> list = MoneyService.getMontly(_dto);									// 해당 날짜 moneylist
		
		// 카드 현금 차트
		MontlyChartDto3 payment = CalendarUtil.payment(list);
		
		
		for(int i = 0 ; i < list.size() ; i++) {
			System.out.println("이건가?" + list.get(i));
		}
		
		MontlyChartDto2 dto2 = CalendarUtil.montlyChart2(list);			// 1~12월 매출, 매입	
		MontlyChartDto3 dto3 = CalendarUtil.montlyChart3(dto2);			// 위에거 한방에 묶음
	
		//MontlyChartDto2 dto4 = CalendarUtil.maximumProfit(dto2);		// 최고, 최저 액수와 월
		//System.out.println(dto4.getMax() + ", " + dto4.getMin());
		//System.out.println(dto4.get_max() + ", " + dto4.get_min());
		
		MontlyChartDto total = CalendarUtil.total(dto2);
		
		
		
		//String profit = CalendarUtil.montlyChart4(dto2);				// 순수익
		MontlyChartDto2 profit = CalendarUtil.montlyChart4(dto2);
		
		List<MontlyChartDto> tablelist = CalendarUtil.table3(dto2);	// 테이블위한........................
		for(int i = 0 ; i < tablelist.size() ; i++) {
			System.out.println(tablelist.get(i).toString());
		}
		
		
		System.out.println(dto2.toString());
		System.out.println(dto3.toString());
		

		model.addAttribute("payment", payment);		// 카드 현금
		
		model.addAttribute("tablelist", tablelist);
		
		model.addAttribute("total", total);
		//model.addAttribute("dto4", dto4);
		model.addAttribute("profit", profit);
		model.addAttribute("dto3", dto3);
	//  model.addAttribute("list", list);
		model.addAttribute("year", year);
		
		return "montlychart";
	}
	
	@RequestMapping(value="account.do", method={RequestMethod.GET, RequestMethod.POST})
	public String account(Model model, HttpServletRequest req) throws Exception {
		logger.info("MemberController account " + new Date());
		
		MemberDto dto = (MemberDto) req.getSession().getAttribute("login");
		logger.info(dto.toString());
		model.addAttribute("login", dto);
		String id = dto.getId();
		logger.info("id : " + id);
		
		List<MoneyDto> account = MoneyService.getAccount(id);
		logger.info("account : " + account);
		model.addAttribute("account", account);
		
		MoneyGoalDto goal = MoneyService.getGoal(id);
		logger.info("goal : " + goal);
		model.addAttribute("goal", goal);
		
		return "account";
	}
	
	
	@RequestMapping(value="newRecordAf.do", method={RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public YesMember newRecordAf(MoneyDto record) throws Exception {
		logger.info("MemberController newRecordAf " + new Date());
		logger.info("**requested new record : " + record.toString());
		
		// ajax - 메시지 response
		boolean b = MoneyService.addNewRecord(record);
		YesMember msg = new YesMember();
		if(b) {
			msg.setMessage("YES");
			logger.info("****addNewRecord success!");
		}else {
			msg.setMessage("NO");
			logger.info("****addNewRecord failed");

		}
		return msg;		
		
	}
	
	

	@RequestMapping(value="saveGoal.do", method={RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public YesMember saveGoal(MoneyGoalDto goal) throws Exception {
		logger.info("MemberController saveGoal " + new Date());
		logger.info("**requested goal : " + goal.toString());
		
		// ajax - 메시지 response
		boolean b = MoneyService.saveGoal(goal);
		YesMember msg = new YesMember();
		if(b) {
			msg.setMessage("YES");
			logger.info("****saveGoal success!");
		}else {
			msg.setMessage("NO");
			logger.info("****saveGoal failed");

		}
		return msg;		
		
	}

	
	
	@RequestMapping(value="updateRecord.do", method={RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public YesMember updateRecord(MoneyDto record) throws Exception {
		logger.info("MemberController updateRecord " + new Date());
		logger.info("**requested modified record : " + record.toString());
		
		// ajax - 메시지 response
		boolean b = MoneyService.updateRecord(record);
		YesMember msg = new YesMember();
		if(b) {
			msg.setMessage("YES");
			logger.info("****updateRecord success!");
		}else {
			msg.setMessage("NO");
			logger.info("****updateRecord failed");

		}
		return msg;		
		
	}
	
	@RequestMapping(value="deleteRecord.do", method={RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public YesMember deleteRecord(MoneyDto record) throws Exception {
		logger.info("MemberController deleteRecord " + new Date());
		logger.info("**requested delete record : id =" + record.getId() + ", seq =" + record.getSeq());
		
		// ajax - 메시지 response
		boolean b = MoneyService.deleteRecord(record);
		YesMember msg = new YesMember();
		if(b) {
			msg.setMessage("YES");
			logger.info("****deleteRecord success!");
		}else {
			msg.setMessage("NO");
			logger.info("****deleteRecord failed");

		}
		return msg;		
		
	}
	
	@RequestMapping(value="getVat.do", method={RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public int getVat(MoneyParam record) throws Exception {
		logger.info("MemberController getVat " + new Date());
		logger.info("**requested record :  " + record.toString() );
		
		// ajax - 메시지 response
	
		int vat = MoneyService.getVat(record);
		
		logger.info("result : " + vat);
	
		return vat;	
}
	
}

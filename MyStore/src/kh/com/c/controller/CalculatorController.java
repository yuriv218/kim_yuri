package kh.com.c.controller;

import java.util.Date;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import kh.com.c.service.CommunityService;
import kh.com.c.service.MemberService;
import kh.com.c.util.CalculatorUtil;
 

@Controller
public class CalculatorController {

	private static final Logger logger 
	= LoggerFactory.getLogger(CalculatorController.class);

	@Autowired
	CommunityService CommunityService;
	
	@Autowired
	MemberService MemberService;

	


	@RequestMapping(value="calculator.do", method={RequestMethod.GET, RequestMethod.POST})
	public String calculator() {
		logger.info("CalculatorController calculator " + new Date());

		return "calculator";
	}
	
	@RequestMapping(value="calculator_card.do", method={RequestMethod.GET, RequestMethod.POST})
	public String calculator_card() {
		logger.info("CalculatorController calculator_card " + new Date());

		return "calculator_card";
	}
	
	@RequestMapping(value="calculator_people.do", method={RequestMethod.GET, RequestMethod.POST})
	public String calculator_people() {
		logger.info("CalculatorController calculator_people " + new Date());

		return "calculator_people";
	}
	
	@RequestMapping(value="calculator_rent.do", method={RequestMethod.GET, RequestMethod.POST})
	public String calculator_rent() {
		logger.info("CalculatorController calculator_rent " + new Date());

		return "calculator_rent";
	}
	
	@RequestMapping(value="calculator_study.do", method={RequestMethod.GET, RequestMethod.POST})
	public String calculator_study() {
		logger.info("CalculatorController calculator_study " + new Date());

		return "calculator_study";
	}
	
	@RequestMapping(value="car_benefit.do", method={RequestMethod.GET, RequestMethod.POST})
	public String car_benefit(Model model,String sales,String percentage) {
		// sales = 월 매출액 ,  percentage = 신용카드 결제 비중 
		logger.info("CalculatorController car_benefit " + new Date());
		logger.info("CalculatorController  " + sales);
		logger.info("CalculatorController  " + percentage);
	
		HashMap<String, String> M_result = new HashMap<>();
		M_result = CalculatorUtil.cardBenefit(sales, percentage);
		
		model.addAttribute("M_result", M_result);
		model.addAttribute("sales", sales);
		model.addAttribute("percentage", percentage);
		
		return "car_benefit";
	}
	
	@RequestMapping(value="people_benefit.do", method={RequestMethod.GET, RequestMethod.POST})
	public String people_benefit(Model model,String peopleN,String peopleM) {
		// peopleN = 사업장 종사자 수, peopleM =  월 급여 175만원 이상 210만원 이하인 상용근로자 수 
		logger.info("CalculatorController people_benefit " + new Date());
		logger.info("CalculatorController  " + peopleN);
		logger.info("CalculatorController  " + peopleM);
		
		HashMap<String, String> M_result = new HashMap<>();	
		M_result = CalculatorUtil.peopleBenefit(peopleN, peopleM);
		logger.info("result :" + M_result.get("result"));
		logger.info("resultY :" + M_result.get("resultY"));
		
		model.addAttribute("M_result", M_result);
		model.addAttribute("peopleN", peopleN);
		model.addAttribute("peopleM", peopleM);
		
		return "peo_benefit";
	}
	
	@RequestMapping(value="rent_benefit.do", method={RequestMethod.GET, RequestMethod.POST})
	public String rent_benefit(Model model,String sales,String rentM) {
		// sales = 종합소득금액  rentM = 월세
		logger.info("CalculatorController rent_benefit " + new Date());
		logger.info("CalculatorController  " + sales);
		logger.info("CalculatorController  " + rentM);
		
		HashMap<String, String> M_result = new HashMap<>();	
		
		M_result = CalculatorUtil.rentBenefit(sales, rentM);
		
		model.addAttribute("M_result", M_result);
		model.addAttribute("sales", sales);
		model.addAttribute("rentM", rentM);
		
		return "rent_benefit";
	}
	
	@RequestMapping(value="study_benefit.do", method={RequestMethod.GET, RequestMethod.POST})
	public String study_benefit(Model model,String edu) {
		// edu = 교육비
		logger.info("CalculatorController study_benefit " + new Date());
		logger.info("CalculatorController  " + edu);
		
		HashMap<String, String> M_result = new HashMap<>();	
		
		M_result = CalculatorUtil.studyBenefit(edu);
		
		model.addAttribute("M_result", M_result);
		model.addAttribute("edu", edu);
		
		return "stu_benefit";
	}
	
}

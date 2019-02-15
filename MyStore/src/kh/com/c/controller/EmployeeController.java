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

import kh.com.c.model.CalEmp;
import kh.com.c.model.Calparam;
import kh.com.c.model.EmployeeDto;
import kh.com.c.model.MemberDto;
import kh.com.c.service.EmployeeService;
import kh.com.c.util.DateUtil;
import kh.com.c.util.myCal;

@Controller
public class EmployeeController {

	
	private static final Logger logger 
	= LoggerFactory.getLogger(EmployeeController.class);
	
	@Autowired
	EmployeeService EmployeeService;
	
	// 가게 관리 - 직원관리
	// 직원 리스트 가져오기
	// 직원 추가 modal창으로 띄우기
	@RequestMapping(value="emplist.do", method={RequestMethod.GET, RequestMethod.POST})
	public String emplist(Model model, HttpServletRequest req, myCal jcal)
	{
		logger.info("EmployeeController emplist " + new Date());	
		
		//model.addAttribute("doc_title", "직원 리스트");
		
		// 로그인된 아이디의 가게명 취득
		String storename = ((MemberDto)req.getSession().getAttribute("login")).getStore();
		
		List<EmployeeDto> list = EmployeeService.getEmpList(storename);
		
		model.addAttribute("employee", list);
		
		jcal.calculate();
		model.addAttribute("jcal", jcal);
		
		return "emplist";
	}
	
	// modal로 변경해서 사용 x
	// 가게 관리 - 직원관리
	// 직원 리스트 추가
	@RequestMapping(value="addEmployee.do", method={RequestMethod.GET, RequestMethod.POST})
	public String addEmployee(Model model, myCal jcal)
	{
		logger.info("EmployeeController addEmployee " + new Date());	
		
		//model.addAttribute("doc_title", "직원 추가");
		
		jcal.calculate();
		model.addAttribute("jcal", jcal);
		
		return "addEmployee";
	}
	
	// 가게 관리 - 직원 관리
	// 직원 리스트 추가 완료	
	@RequestMapping(value="addEmployeeAf.do", method={RequestMethod.GET, RequestMethod.POST})
	public String addEmployeeAf(Model model, CalEmp cal)
	{
		logger.info("EmployeeController addEmployeeAf " + new Date());	
		
		//model.addAttribute("doc_title", "직원 추가 완료 ");
		
		logger.info(cal.toString());
		
		DateUtil du = new DateUtil();
		
		String edate = du.toDate(cal.getYear(), cal.getMonth(), cal.getDay()) + "";
		
		EmployeeDto emp = new EmployeeDto(cal.getStore(), cal.getE_name(), cal.getE_tel(), cal.getE_level(), cal.getSalary(), edate, 0, 0);
		
		logger.info(emp.toString());
		
		EmployeeService.addEmployee(emp);
		
		return "redirect:/emplist.do";
	}
	
	// 가게 관리 - 직원 관리
	// 직원 근무시간 입력
	@RequestMapping(value="inputTime.do", method={RequestMethod.GET, RequestMethod.POST})
	public String inputTime(Model model, String total, int seq)
	{
		logger.info("EmployeeController inputTime " + new Date());	
		
		logger.info("seq : " + seq + " total : " + total);
		
		int _total = Integer.parseInt(total);
		
		EmployeeDto emp = new EmployeeDto(seq, _total);
		
		EmployeeService.inputTime(emp);
		
		return "redirect:/emplist.do";
		
	}
	
	// 가게 관리 - 직원 관리
	// 직원 삭제
	@RequestMapping(value="deleteEmp.do", method={RequestMethod.GET, RequestMethod.POST})
	public String deleteEmp(Model model, int seq)
	{
		logger.info("EmployeeController deleteEmp " + new Date());	
		
		//model.addAttribute("doc_title", "직원 삭제  ");
		
		EmployeeService.deleteEmp(seq);
		
		return "redirect:/emplist.do";
	}
	
	// 가게 관리 - 직원 관리
	// 직원 프로필 수정(기본 정보만, 입사일 수정 불가)
	@RequestMapping(value="updateEmp.do", method={RequestMethod.GET, RequestMethod.POST})
	public String updateEmployee(Model model, int seq, myCal jcal)
	{
		logger.info("EmployeeController updateEmp " + new Date());	
		
		//model.addAttribute("doc_title", "직원 수정 ");
		
		EmployeeDto emp = EmployeeService.getDetailEmp(seq);
		
		model.addAttribute("emp", emp);
		
		jcal.calculate();
		model.addAttribute("jcal", jcal);
		
		return "updateemployee";
	}
	
	// 가게 관리 - 직원 관리
	// 직원 프로필 수정 완료
	@RequestMapping(value="updateEmpAf.do", method={RequestMethod.GET, RequestMethod.POST})
	public String updateEmployee(Model model, EmployeeDto emp)
	{
		logger.info("EmployeeController updateEmpAf " + new Date());	
		
		//model.addAttribute("doc_title", "직원 수정 ");
		
		EmployeeService.updateEmployee(emp);
		
		return "redirect:/emplist.do";
	}
	
	// 가게 관리 - 직원 관리
	// 직원 근무수당 정산 부분 (누적 근무시간, 누적 근무수당 - > 0 // 정산누적액으로 이동)
	@RequestMapping(value="resetSal.do", method={RequestMethod.GET, RequestMethod.POST})
	public String resetSal(Model model, int seq, int salary, int total)
	{
		logger.info("EmployeeController resetSal " + new Date());	
		
		logger.info("seq : " + seq + " salary : " + salary + " total : " + total);
		
		EmployeeDto emp = new EmployeeDto(seq, salary, total);
		
		EmployeeService.resetSal(emp);
		
		return "redirect:/emplist.do";
		
	}
	
}

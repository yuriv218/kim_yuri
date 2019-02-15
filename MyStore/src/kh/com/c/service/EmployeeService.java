package kh.com.c.service;

import java.util.List;

import kh.com.c.model.EmployeeDto;

public interface EmployeeService {

	public List<EmployeeDto> getEmpList(String storename);
	
	public boolean addEmployee(EmployeeDto emp);
	
	public void inputTime(EmployeeDto emp);
	
	public void deleteEmp(int seq);
	
	public EmployeeDto getDetailEmp(int seq);
	
	public void updateEmployee(EmployeeDto emp);
	
	public void resetSal(EmployeeDto emp);
}

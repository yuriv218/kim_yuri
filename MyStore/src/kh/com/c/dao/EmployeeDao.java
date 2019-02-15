package kh.com.c.dao;

import java.util.List;

import kh.com.c.model.EmployeeDto;

public interface EmployeeDao {

	List<EmployeeDto> getEmpList(String storename);
	
	boolean addEmployee(EmployeeDto emp);
	
	void inputTime(EmployeeDto emp);
	
	void deleteEmp(int seq);
	
	EmployeeDto getDetailEmp(int seq);
	
	void updateEmployee(EmployeeDto emp);
	
	void resetSal(EmployeeDto emp);
}

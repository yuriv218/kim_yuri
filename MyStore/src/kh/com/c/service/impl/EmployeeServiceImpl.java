package kh.com.c.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.com.c.dao.EmployeeDao;
import kh.com.c.model.EmployeeDto;
import kh.com.c.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeDao EmployeeDao;

	@Override
	public List<EmployeeDto> getEmpList(String storename) {
		// TODO Auto-generated method stub
		return EmployeeDao.getEmpList(storename);
	}

	@Override
	public boolean addEmployee(EmployeeDto emp) {
		// TODO Auto-generated method stub
		return EmployeeDao.addEmployee(emp);
	}

	@Override
	public void inputTime(EmployeeDto emp) {
		// TODO Auto-generated method stub
		EmployeeDao.inputTime(emp);
	}

	@Override
	public void deleteEmp(int seq) {
		// TODO Auto-generated method stub
		EmployeeDao.deleteEmp(seq);
	}

	@Override
	public EmployeeDto getDetailEmp(int seq) {
		// TODO Auto-generated method stub
		return EmployeeDao.getDetailEmp(seq);
	}

	@Override
	public void updateEmployee(EmployeeDto emp) {
		// TODO Auto-generated method stub
		EmployeeDao.updateEmployee(emp);
	}

	@Override
	public void resetSal(EmployeeDto emp) {
		// TODO Auto-generated method stub
		EmployeeDao.resetSal(emp);
	}
	
	
}

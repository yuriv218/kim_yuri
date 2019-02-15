package kh.com.c.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.com.c.dao.EmployeeDao;
import kh.com.c.model.EmployeeDto;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	@Autowired
	SqlSession sqlSession;
	
	String ns = "Employee.";

	@Override
	public List<EmployeeDto> getEmpList(String storename) {
		// TODO Auto-generated method stub
		List<EmployeeDto> list = sqlSession.selectList(ns + "getEmpList", storename);		
		return list;
	}

	@Override
	public boolean addEmployee(EmployeeDto emp) {
		// TODO Auto-generated method stub
		sqlSession.insert(ns + "addEmployee", emp);
		return true;
	}

	@Override
	public void inputTime(EmployeeDto emp) {
		// TODO Auto-generated method stub
		sqlSession.update(ns + "inputTime", emp);
	}

	@Override
	public void deleteEmp(int seq) {
		// TODO Auto-generated method stub
		sqlSession.delete(ns + "deleteEmp", seq);
	}

	@Override
	public EmployeeDto getDetailEmp(int seq) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(ns + "getDetailEmp", seq);
	}

	@Override
	public void updateEmployee(EmployeeDto emp) {
		// TODO Auto-generated method stub
		sqlSession.update(ns + "updateEmployee", emp);
	}

	@Override
	public void resetSal(EmployeeDto emp) {
		// TODO Auto-generated method stub
		sqlSession.update(ns + "resetSal", emp);
	}
}

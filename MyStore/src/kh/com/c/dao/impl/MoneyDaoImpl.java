package kh.com.c.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.com.c.dao.MoneyDao;
import kh.com.c.model.MoneyDto;
import kh.com.c.model.MoneyGoalDto;
import kh.com.c.model.MoneyParam;
import kh.com.c.model.MontlyChartDto;

@Repository
public class MoneyDaoImpl implements MoneyDao {

	@Autowired
	SqlSession sqlSession;
	
	String ns = "Money.";
	
	
	@Override
	public List<MoneyDto> getMoney(String id) {
		
		List<MoneyDto> list = sqlSession.selectList(ns + "getMoney", id);
		return list;
	}
/*
	@Override
	public String getStore(String id) {
		return sqlSession.selectOne(ns+"getStore", id);
	}
*/
	@Override
	public List<MoneyDto> getMontly(MontlyChartDto dto) {
		return sqlSession.selectList(ns+"getMontly", dto);
	}
	
	@Override
	public boolean addNewRecord(MoneyDto record) throws Exception {
		
		int b = sqlSession.insert(ns + "addNewRecord", record);
		return b>0?true:false;
	}

	@Override
	public List<MoneyDto> getAccount(String id) throws Exception {
		
		List<MoneyDto> account = sqlSession.selectList(ns + "getAccount", id);
		return account;
	}

	@Override
	public boolean updateRecord(MoneyDto record) throws Exception {
		
		int b = sqlSession.update(ns + "updateRecord", record);
		return b>0?true:false;
	}

	@Override
	public boolean deleteRecord(MoneyDto record) throws Exception {
		
		int b = sqlSession.delete(ns + "deleteRecord", record);
		return b>0?true:false;
	}

	@Override
	public int getVat(MoneyParam record) throws Exception {
		int b = sqlSession.selectOne(ns + "getVat", record);
		return b;
	}
	@Override
	public int getChartData(MoneyParam record) throws Exception {
		
		int data = sqlSession.selectOne(ns + "getChartData", record);
		return data;
	}
	@Override
	public boolean saveGoal(MoneyGoalDto goal) throws Exception {
		
		int b = sqlSession.update(ns + "saveGoal", goal);
		return b > 0 ? true : false;
	}
	@Override
	public MoneyGoalDto getGoal(String id) throws Exception {
		
		return sqlSession.selectOne(ns + "getGoal", id);
	}
}

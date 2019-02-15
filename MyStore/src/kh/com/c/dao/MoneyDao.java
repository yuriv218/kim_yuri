package kh.com.c.dao;

import java.util.List;

import kh.com.c.model.MoneyDto;
import kh.com.c.model.MoneyGoalDto;
import kh.com.c.model.MoneyParam;
import kh.com.c.model.MontlyChartDto;

public interface MoneyDao {
	 
	/*	String getStore(String id);	*/// 아이디로 가게이름 가져오기
		
		List<MoneyDto> getMoney(String id);		// 가게 money리스트
		
		List<MoneyDto> getMontly(MontlyChartDto dto);
		
		boolean addNewRecord(MoneyDto record) throws Exception;
		
		List<MoneyDto> getAccount(String id) throws Exception;
		
		boolean updateRecord(MoneyDto record) throws Exception;
		
		boolean deleteRecord(MoneyDto record) throws Exception;
		
		int getVat(MoneyParam record) throws Exception;
		
		int getChartData(MoneyParam record) throws Exception;
		
		boolean saveGoal(MoneyGoalDto goal) throws Exception;
		
		MoneyGoalDto getGoal(String id) throws Exception;
	
}

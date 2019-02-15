package kh.com.c.service;

import java.util.List;

import kh.com.c.dao.MoneyDao;
import kh.com.c.model.MoneyDto;
import kh.com.c.model.MoneyGoalDto;
import kh.com.c.model.MoneyParam;
import kh.com.c.model.MontlyChartDto;

public interface MoneyService {
	
	/*public String getStore(String id);		*/	// 아이디로 가게 이름 가져오기
	public List<MoneyDto> getMoney(String id);	// 가게 money 리스트
	
	public List<MoneyDto> getMontly(MontlyChartDto dto);
	
	public boolean addNewRecord(MoneyDto record) throws Exception;
	
	public List<MoneyDto> getAccount(String id) throws Exception;
	
	public boolean updateRecord(MoneyDto record) throws Exception;
	
	public boolean deleteRecord(MoneyDto record) throws Exception;
	
	public int getVat(MoneyParam record) throws Exception;
	
	public int getChartData(MoneyParam record) throws Exception;
	
	public boolean saveGoal(MoneyGoalDto goal) throws Exception;
	
	public MoneyGoalDto getGoal(String id) throws Exception;

}

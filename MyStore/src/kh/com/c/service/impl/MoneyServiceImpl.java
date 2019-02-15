package kh.com.c.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.com.c.dao.MoneyDao;
import kh.com.c.model.MoneyDto;
import kh.com.c.model.MoneyGoalDto;
import kh.com.c.model.MoneyParam;
import kh.com.c.model.MontlyChartDto;
import kh.com.c.service.MoneyService;

@Service
public class MoneyServiceImpl implements MoneyService {

	@Autowired
	MoneyDao MoneyDao;
	
/*	@Override
	public String getStore(String id) {
		return MoneyDao.getStore(id);
	}*/

	@Override
	public List<MoneyDto> getMoney(String id) {
		return MoneyDao.getMoney(id);
	}

	@Override
	public List<MoneyDto> getMontly(MontlyChartDto dto) {
		return MoneyDao.getMontly(dto);
	}
	
	@Override
	public boolean addNewRecord(MoneyDto record) throws Exception {
		
		return MoneyDao.addNewRecord(record);
	}

	@Override
	public List<MoneyDto> getAccount(String id) throws Exception {
		
		return MoneyDao.getAccount(id);
	}

	@Override
	public boolean updateRecord(MoneyDto record) throws Exception {
		
		return MoneyDao.updateRecord(record);
	}

	@Override
	public boolean deleteRecord(MoneyDto record) throws Exception {
		
		return MoneyDao.deleteRecord(record);
	}


	@Override
	public int getVat(MoneyParam record) throws Exception {
		
		return MoneyDao.getVat(record);
	}

	@Override
	public int getChartData(MoneyParam record) throws Exception {
		
		return MoneyDao.getChartData(record);
	}

	@Override
	public boolean saveGoal(MoneyGoalDto goal) throws Exception {
		
		return MoneyDao.saveGoal(goal);
	}
	
	@Override
	public MoneyGoalDto getGoal(String id) throws Exception {
	
		return MoneyDao.getGoal(id);
	}

	
	
}

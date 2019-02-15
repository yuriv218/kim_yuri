package kh.com.c.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.com.c.model.SearchParam;
import kh.com.c.model.StockDto;
import kh.com.c.dao.StockDao;
import kh.com.c.service.StockService;

@Service
public class StockServiceImpl implements StockService {

	@Autowired
	StockDao StockDao;

	@Override
	public List<StockDto> getGoodsList(String storename) {
		// TODO Auto-generated method stub
		return StockDao.getGoodsList(storename);
	}

	@Override
	public boolean addGoods(StockDto stock) {
		// TODO Auto-generated method stub		
		return StockDao.addGoods(stock);
	}

	@Override
	public void delGoods(int seq) {
		// TODO Auto-generated method stub
		StockDao.delGoods(seq);		
	}

	@Override
	public StockDto getGoods(int seq) {
		// TODO Auto-generated method stub
		return StockDao.getGoods(seq);
	}

	@Override
	public void updateGoods(StockDto stock) {
		// TODO Auto-generated method stub
		StockDao.updateGoods(stock);
	}
	
	@Override
	public List<StockDto> stockPageList(SearchParam s_param) {
		return StockDao.stockPageList(s_param);
	}

	@Override
	public int getStockCount(SearchParam s_param) {
		return StockDao.getStockCount(s_param);
	}
	
	@Override
	public void stockDel(int seq) {
		StockDao.stockDel(seq);		
	}

	@Override
	public void stockUpdate(StockDto stock) {
		StockDao.stockUpdate(stock);
	}

	@Override
	public int stockAmountCheck(int seq) {
		return StockDao.stockAmountCheck(seq);
	}

	@Override
	public void stockAmountUp(int seq) {
		StockDao.stockAmountUp(seq);
	}

	@Override
	public void stockAmountDown(int seq) {
		StockDao.stockAmountDown(seq);
	}

	@Override
	public int stockCount(String store) {
		return StockDao.stockCount(store);
	}
	
	@Override
	   public List<StockDto> soldoutList(String store) {
	      return StockDao.soldoutList(store);
	   }

	   @Override
	   public List<StockDto> soldoutOnlyList(SearchParam s_param) {
	      return StockDao.soldoutOnlyList(s_param);
	   }

	   @Override
	   public int soldoutOnlyCount(SearchParam s_param) {
	      return StockDao.soldoutOnlyCount(s_param);
	   }
	   
	
}

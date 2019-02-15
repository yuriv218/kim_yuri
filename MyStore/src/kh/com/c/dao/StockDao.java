package kh.com.c.dao;

import java.util.List;

import kh.com.c.model.SearchParam;
import kh.com.c.model.StockDto;

public interface StockDao {

	List<StockDto> getGoodsList(String storename);
	
	boolean addGoods(StockDto stock);
	
	void delGoods(int seq);
	
	StockDto getGoods(int seq);
	
	void updateGoods(StockDto stock);
	
	//public List<StockDto> stoklist(String store);
		public List<StockDto> stockPageList(SearchParam s_param);
		public int getStockCount(SearchParam s_param);
		
		public void stockDel(int seq);
		
		public void stockUpdate(StockDto stock);
		
		public void stockAmountUp(int seq);
		
		public void stockAmountDown(int seq);
		
		public int stockAmountCheck(int seq);
		
		public int stockCount(String store);
		
		public List<StockDto> soldoutList(String store);
	      
	      public List<StockDto> soldoutOnlyList(SearchParam s_param);
	      
	      public int soldoutOnlyCount(SearchParam s_param);
}

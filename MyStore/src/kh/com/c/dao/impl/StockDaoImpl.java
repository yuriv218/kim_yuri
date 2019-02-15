package kh.com.c.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.com.c.dao.StockDao;
import kh.com.c.model.SearchParam;
import kh.com.c.model.StockDto;

@Repository
public class StockDaoImpl implements StockDao {

	@Autowired
	SqlSession sqlSession;
	
	String ns = "Stock.";

	@Override
	public List<StockDto> getGoodsList(String storename) {
		// TODO Auto-generated method stub
		List<StockDto> list = sqlSession.selectList(ns + "getGoodsList", storename);		
		return list;
	}

	@Override
	public boolean addGoods(StockDto stock) {
		// TODO Auto-generated method stub
		sqlSession.insert(ns + "addGoods", stock);
		return true;
	}

	@Override
	public void delGoods(int seq) {
		// TODO Auto-generated method stub
		sqlSession.delete(ns + "delGoods", seq);
	}

	@Override
	public StockDto getGoods(int seq) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(ns + "getGoods", seq);
	}

	@Override
	public void updateGoods(StockDto stock) {
		// TODO Auto-generated method stub
		sqlSession.update(ns + "updateGoods", stock);
	}
	
	@Override
	public List<StockDto> stockPageList(SearchParam s_param) {
		return sqlSession.selectList(ns+"stockPageList", s_param);
	}

	@Override
	public int getStockCount(SearchParam s_param) {
		return sqlSession.selectOne(ns+"getStockCount", s_param);
	}
	
	@Override
	public void stockDel(int seq) {
		sqlSession.delete(ns+"stockDel", seq);		
	}

	@Override
	public void stockUpdate(StockDto stock) {
		sqlSession.update(ns+"stockUpdate", stock);		
	}

	@Override
	public void stockAmountUp(int seq) {
		sqlSession.update(ns+"stockAmountUp", seq);
	}

	@Override
	public void stockAmountDown(int seq) {
		sqlSession.update(ns+"stockAmountDown", seq);
	}

	@Override
	public int stockAmountCheck(int seq) {
		return sqlSession.selectOne(ns+"stockAmountCheck", seq);
	}

	@Override
	public int stockCount(String store) {
		return sqlSession.selectOne(ns+"stockCount", store);
	}
	
	@Override
	   public List<StockDto> soldoutList(String store) {
	      return sqlSession.selectList(ns+"soldoutList", store);
	   }

	   @Override
	   public List<StockDto> soldoutOnlyList(SearchParam s_param) {
	      return sqlSession.selectList(ns+"soldoutOnlyList", s_param);
	   }

	   @Override
	   public int soldoutOnlyCount(SearchParam s_param) {
	      return sqlSession.selectOne(ns+"soldoutOnlyCount", s_param);
	   }
}

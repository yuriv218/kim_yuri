package kh.com.c.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.com.c.dao.CustomerDao;
import kh.com.c.model.CustomerDto;
import kh.com.c.model.SearchParam;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	@Autowired
	SqlSession sqlSession;
	
	String ns = "Customer.";

	/*@Override
	public List<CustomerDto> customerList(String store) {
		return sqlSession.selectList(ns+"customerList", store);
	}
*/
	@Override
	public List<CustomerDto> customerPageList(SearchParam s_param) {
		return sqlSession.selectList(ns+"customerPageList", s_param);
	}
	
	@Override
	public int getCustomerCount(SearchParam s_param) {
		return sqlSession.selectOne(ns+"getCustomerCount", s_param);
	}

	@Override
	public void customerDel(int seq) {
		sqlSession.delete(ns+"customerDel", seq);		
	}

	

	@Override
	public CustomerDto customerDetail(int seq) {
		return sqlSession.selectOne(ns+"customerDetail", seq);
	}

	@Override
	public void customerUpdate(CustomerDto customer) {
		sqlSession.update(ns+"customerUpdate", customer);
	}

	@Override
	public void customerInsert(CustomerDto customer) {
		sqlSession.insert(ns+"customerInsert", customer);
	}

	@Override
	public int clientCount(String store) {
		return sqlSession.selectOne(ns+"clientCount", store);
	}

	@Override
	public int clientSeq(CustomerDto customer) {
		return sqlSession.selectOne(ns+"clientSeq", customer);
	}
	
	@Override
	   public List<CustomerDto> customerStarOnly(SearchParam s_param) {
	      return sqlSession.selectList(ns+"customerStarOnly", s_param);
	   }
	   
	   

	   @Override
	   public int customerStarCount(SearchParam s_param) {
	      return sqlSession.selectOne(ns+"customerStarCount", s_param);
	   }
	
	   @Override
	   public void starUpdate(CustomerDto customer) {
	      sqlSession.update(ns+"starUpdate", customer);
	   }

	   @Override
	   public int star(int seq) {
	      return sqlSession.selectOne(ns+"star", seq);
	   }
	
	
}

package kh.com.c.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.com.c.dao.CustomerDao;
import kh.com.c.model.CustomerDto;
import kh.com.c.model.SearchParam;
import kh.com.c.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerDao CustomerDao;

	
	
	/*@Override
	public List<CustomerDto> customerList(String store) {
		return CustomerDao.customerList(store);
	}*/

	@Override
	public List<CustomerDto> customerPageList(SearchParam s_param) {
		return CustomerDao.customerPageList(s_param);
	}
	

	@Override
	public int getCustomerCount(SearchParam s_param) {
		return CustomerDao.getCustomerCount(s_param);
	}



	@Override
	public void customerDel(int seq) {
		CustomerDao.customerDel(seq);
	}

	@Override
	public CustomerDto customerDetail(int seq) {
		return CustomerDao.customerDetail(seq);
	}

	@Override
	public void customerUpdate(CustomerDto customer) {
		CustomerDao.customerUpdate(customer);
	}

	@Override
	public void customerInsert(CustomerDto customer) {
		CustomerDao.customerInsert(customer);
	}

	@Override
	public int clientCount(String store) {
		return CustomerDao.clientCount(store);
	}

	@Override
	public int clientSeq(CustomerDto customer) {
		return CustomerDao.clientSeq(customer);
	}
	
	@Override
	   public List<CustomerDto> customerStarOnly(SearchParam s_param) {
	      return CustomerDao.customerStarOnly(s_param);
	   }


	   @Override
	   public int customerStarCount(SearchParam s_param) {
	      return CustomerDao.customerStarCount(s_param);
	   }
	   @Override
	   public void starUpdate(CustomerDto customer) {
	      CustomerDao.starUpdate(customer);
	   }


	   @Override
	   public int star(int seq) {
	      return CustomerDao.star(seq);
	   }
	
}

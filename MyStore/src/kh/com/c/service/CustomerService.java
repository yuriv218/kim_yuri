package kh.com.c.service;

import java.util.List;

import kh.com.c.model.CustomerDto;
import kh.com.c.model.SearchParam;

public interface CustomerService {
	
	public List<CustomerDto> customerPageList(SearchParam s_param);
	public int getCustomerCount(SearchParam s_param);
	//public List<CustomerDto> customerList(String store);
	public void customerDel(int seq);
	public CustomerDto customerDetail(int seq);
	public void customerUpdate(CustomerDto customer);
	public void customerInsert(CustomerDto customer);
	public int clientCount(String store);
	public int clientSeq(CustomerDto customer);
	
	public List<CustomerDto> customerStarOnly(SearchParam s_param);
	   public int customerStarCount(SearchParam s_param);
	   public void starUpdate(CustomerDto customer);
	   public int star(int seq);
}

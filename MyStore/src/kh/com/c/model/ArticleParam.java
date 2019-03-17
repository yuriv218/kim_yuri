package kh.com.c.model;

import java.io.Serializable;

public class ArticleParam implements Serializable {
	
	private String search;
	private String category;
	private String sort;
	
	// ----------- paging
	private int recordCountPerPage = 10;	// 표현할 한페이지의 글수
	private int pageNumber = 0;				// 페이지 넘버
	
	private int start = 1;
	private int end = 10;

	public ArticleParam() {	}
	


	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}






	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}






	public int getPageNumber() {
		return pageNumber;
	}






	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}






	public int getStart() {
		return start;
	}






	public void setStart(int start) {
		this.start = start;
	}






	public int getEnd() {
		return end;
	}






	public void setEnd(int end) {
		this.end = end;
	}






	public String getSearch() {
		return search;
	}


	public void setSearch(String search) {
		this.search = search;
	}




	public String getCategory() {
		return category;
	}



	public void setCategory(String category) {
		this.category = category;
	}



	public String getSort() {
		return sort;
	}


	public void setSort(String sort) {
		this.sort = sort;
	}

	
	

}








package kh.com.c.dao;

import java.util.List;

import kh.com.c.model.BookDto;

public interface BookDao {

	List<BookDto> getBookList(String storename);
	
	boolean addBook(BookDto book);
	
	BookDto getDetail(int seq);
	
	void deletebook(int seq);
	
	void updatebook(BookDto book);
}

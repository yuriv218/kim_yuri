package kh.com.c.service;

import java.util.List;

import kh.com.c.model.BookDto;

public interface BookService {
	
	public List<BookDto> getBookList(String storename);
	
	public boolean addBook(BookDto book);
	
	public BookDto getDetail(int seq);
	
	public void deletebook(int seq);
	
	public void updatebook(BookDto book);

}

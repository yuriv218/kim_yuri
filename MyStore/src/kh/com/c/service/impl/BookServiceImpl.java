package kh.com.c.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.com.c.dao.BookDao;
import kh.com.c.model.BookDto;
import kh.com.c.service.BookService;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	BookDao BookDao;

	@Override
	public List<BookDto> getBookList(String storename) {
		// TODO Auto-generated method stub
		return BookDao.getBookList(storename);
	}

	@Override
	public boolean addBook(BookDto book) {
		// TODO Auto-generated method stub
		return BookDao.addBook(book);
	}

	@Override
	public BookDto getDetail(int seq) {
		// TODO Auto-generated method stub
		return BookDao.getDetail(seq);
	}

	@Override
	public void deletebook(int seq) {
		// TODO Auto-generated method stub
		BookDao.deletebook(seq);
	}

	@Override
	public void updatebook(BookDto book) {
		// TODO Auto-generated method stub
		BookDao.updatebook(book);
	}
	
	
	
}

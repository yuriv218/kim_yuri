package kh.com.c.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.com.c.dao.BookDao;
import kh.com.c.model.BookDto;

@Repository
public class BookDaoImpl implements BookDao {
	
	@Autowired
	SqlSession sqlSession;
	
	String ns = "Book.";

	@Override
	public List<BookDto> getBookList(String storename) {
		// TODO Auto-generated method stub
		List<BookDto> blist = sqlSession.selectList(ns + "getBookList", storename);		
		return blist;
	}

	@Override
	public boolean addBook(BookDto book) {
		// TODO Auto-generated method stub
		sqlSession.insert(ns + "addBook", book);		
		return true;
	}

	@Override
	public BookDto getDetail(int seq) {
		// TODO Auto-generated method stub
		BookDto bd = sqlSession.selectOne(ns + "getDetail", seq);
		return bd;
	}

	@Override
	public void deletebook(int seq) {
		// TODO Auto-generated method stub
		sqlSession.delete(ns + "deletebook", seq);
	}

	@Override
	public void updatebook(BookDto book) {
		// TODO Auto-generated method stub
		sqlSession.update(ns + "updatebook", book);
	}

}

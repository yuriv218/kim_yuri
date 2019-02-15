package kh.com.c.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.com.c.dao.QnaDao;
import kh.com.c.model.QnaDto;
import kh.com.c.model.QnaParam;

@Repository
public class QnaDaoImpl implements QnaDao {

	@Autowired
	SqlSession sqlSession;
	
	String ns = "Qna.";

	@Override
	public List<QnaDto> getQnaList() {
		List<QnaDto> list= sqlSession.selectList(ns + "getQnaList");		
		return list;
	}

	@Override
	public QnaDto getQna(int seq) throws Exception {
		return sqlSession.selectOne(ns+"getQna" , seq);
	}

	@Override
	public boolean writeQna(QnaDto qna) throws Exception {
		sqlSession.insert(ns+"writeQna", qna);
		return true;
	}

	@Override
	public void updateQna(QnaDto qna) {
	sqlSession.update(ns+"updateQna",qna);
		
	}
	
	@Override
	public void updateResult(QnaDto qna) {
		sqlSession.update(ns+"updateResult",qna);
		
	}

	@Override
	public boolean replyBbsUpdate(QnaDto qna) throws Exception {
		sqlSession.update(ns+"replyQnaUpdate", qna);
		return true;
	}

	@Override
	public boolean replyBbsInsert(QnaDto qna) throws Exception {
		sqlSession.insert(ns+"replyQnaInsert", qna);
		return true;
	}

	@Override
	public void deleteQna(int seq) throws Exception {
		sqlSession.update(ns+"deleteQna", seq);
		
	}

	@Override
	public List<QnaDto> enqueryList(String id) throws Exception {
		return sqlSession.selectOne(ns+"enqueryList", id);
	}


 
 
	
 
	 
	
	
}

package kh.com.c.dao;

import java.util.List;

 
import kh.com.c.model.QnaDto;
import kh.com.c.model.QnaParam;

 

public interface QnaDao {
	//만든것
	List<QnaDto> getQnaList();
	
	QnaDto getQna(int seq) throws Exception;
	List<QnaDto> enqueryList(String id) throws Exception;
	boolean writeQna(QnaDto qna) throws Exception;
	
	void updateQna(QnaDto qna);
	void updateResult(QnaDto qna);
	
	
	boolean replyBbsUpdate(QnaDto qna) throws Exception;
	boolean replyBbsInsert(QnaDto qna) throws Exception;
	
	void deleteQna(int seq) throws Exception;

}

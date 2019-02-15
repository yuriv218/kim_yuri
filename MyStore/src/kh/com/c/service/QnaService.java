package kh.com.c.service;

import java.util.List;

 
import kh.com.c.model.QnaDto;
import kh.com.c.model.QnaParam;
 
public interface QnaService {

	public List<QnaDto> getQnaList();
	
	public QnaDto getQna(int seq) throws Exception;
	
	public boolean writeQna(QnaDto qna) throws Exception;
	
	public void updateQna(QnaDto qna);
	
	public void updateResult(QnaDto qna);
	
	public void reply(QnaDto qna) throws Exception;
	
	public void deleteQna(int seq) throws Exception;
	
	public List<QnaDto> enqueryList(String id) throws Exception;
	
}

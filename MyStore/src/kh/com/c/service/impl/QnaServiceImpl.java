package kh.com.c.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.com.c.dao.QnaDao;
import kh.com.c.model.QnaDto;
import kh.com.c.model.QnaParam;
import kh.com.c.service.QnaService;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	QnaDao QnaDao;

	@Override
	public List<QnaDto> getQnaList() {
	return QnaDao.getQnaList();
	}

	@Override
	public QnaDto getQna(int seq) throws Exception {
		return QnaDao.getQna(seq);
	}

	@Override
	public boolean writeQna(QnaDto qna) throws Exception {
		 
		return QnaDao.writeQna(qna);
	}

	@Override
	public void updateQna(QnaDto qna) {
		QnaDao.updateQna(qna);
		
	}
	@Override
	public void updateResult(QnaDto qna) {
		 QnaDao.updateResult(qna);
		
	}
	@Override
	public void reply(QnaDto qna) throws Exception {
		QnaDao.replyBbsUpdate(qna);
		QnaDao.replyBbsInsert(qna);
		
	}

	@Override
	public void deleteQna(int seq) throws Exception {
		QnaDao.deleteQna(seq);
		
	}

	@Override
	public List<QnaDto> enqueryList(String id) throws Exception {
		return	QnaDao.enqueryList(id);
		 
	}



 
 
}

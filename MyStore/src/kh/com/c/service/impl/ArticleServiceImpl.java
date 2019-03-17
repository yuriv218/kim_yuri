package kh.com.c.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.com.c.dao.ArticleDao;
import kh.com.c.model.ArticleDto;
import kh.com.c.model.ArticleParam;
import kh.com.c.service.ArticleService;
@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	ArticleDao ArticleDao;

	@Override
	public void uploadArticle(ArticleDto dto) {
		
		ArticleDao.uploadArticle(dto);
	}

	@Override
	public List<ArticleDto> getArticlePagingList(ArticleParam param) {
		
		return ArticleDao.getArticlePagingList(param);
	}

	@Override
	public int getArticleSearch(ArticleParam param) {
		
		return ArticleDao.getArticleSearch(param);
	}

	@Override
	public void likeArticle(int seq) {
		
		ArticleDao.likeArticle(seq);
	}

	@Override
	public ArticleDto getArticle(int seq) {
		
		return ArticleDao.getArticle(seq);
	}
}

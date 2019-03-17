package kh.com.c.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.com.c.dao.ArticleDao;
import kh.com.c.model.ArticleDto;
import kh.com.c.model.ArticleParam;
@Repository
public class ArticleDaoImpl implements ArticleDao {

	@Autowired
	SqlSession sqlSession;
	
	String ns = "Article.";

	@Override
	public void uploadArticle(ArticleDto dto) {
		sqlSession.insert(ns+"uploadArticle", dto);
		
	}

	@Override
	public List<ArticleDto> getArticlePagingList(ArticleParam param) {
		
		List<ArticleDto> dto = sqlSession.selectList(ns+"getArticlePagingList",param);
		
		return dto;
	}

	@Override
	public int getArticleSearch(ArticleParam param) {
		
		return sqlSession.selectOne(ns+"getArticleSearch", param);
	}

	@Override
	public void likeArticle(int seq) {
		sqlSession.update(ns+"likeArticle",seq);
		
	}

	@Override
	public ArticleDto getArticle(int seq) {
		
		return sqlSession.selectOne(ns+"getArticle", seq);
	}
}

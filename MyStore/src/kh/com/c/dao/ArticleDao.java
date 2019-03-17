package kh.com.c.dao;

import java.util.List;

import kh.com.c.model.ArticleDto;
import kh.com.c.model.ArticleParam;
import kh.com.c.model.CommunityDto;


public interface ArticleDao {

	void uploadArticle(ArticleDto dto);

	public ArticleDto getArticle(int seq);
	
	List<ArticleDto> getArticlePagingList(ArticleParam param);

	int getArticleSearch(ArticleParam param);
	
	void likeArticle(int seq);

}

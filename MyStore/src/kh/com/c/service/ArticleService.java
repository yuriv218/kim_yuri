package kh.com.c.service;

import java.util.List;

import kh.com.c.model.ArticleDto;
import kh.com.c.model.ArticleParam;

public interface ArticleService {

	public void uploadArticle(ArticleDto dto) ;

	public List<ArticleDto> getArticlePagingList(ArticleParam param);
	
	public int getArticleSearch(ArticleParam param);
	
	public void likeArticle(int seq);
	
	public ArticleDto getArticle(int seq);
}

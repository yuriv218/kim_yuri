package kh.com.c.model;

import java.io.Serializable;

/*
 * DROP TABLE ARTICLE
CASCADE CONSTRAINTS;

DROP SEQUENCE  SEQ_ARTICLE;

CREATE TABLE ARTICLE(
SEQ NUMBER(8) PRIMARY KEY,
TITLE  VARCHAR2(200) NOT NULL,
CATEGORY VARCHAR2(50) NOT NULL,
LIKEIT NUMBER(8) NOT NULL,
WDATE DATE NOT NULL,
DEL NUMBER(1) NOT NULL
);

CREATE SEQUENCE SEQ_ARTICLE
START WITH 1 INCREMENT BY 1;


 * 
 */

public class ArticleDto implements Serializable{
	private int seq;
	private String title;
	private String category;
	private int likeit;
	private String wdate;
	private int del;

	public ArticleDto() {
		
	}

	public ArticleDto(String title, String category) {
		super();
		this.title = title;
		this.category = category;
	}

	public ArticleDto(int seq, String title, String category, int likeit, String wdate, int del) {
		super();
		this.seq = seq;
		this.title = title;
		this.category = category;
		this.likeit = likeit;
		this.wdate = wdate;
		this.del = del;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getLikeit() {
		return likeit;
	}

	public void setLikeit(int likeit) {
		this.likeit = likeit;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public int getDel() {
		return del;
	}

	public void setDel(int del) {
		this.del = del;
	}
	
	
}

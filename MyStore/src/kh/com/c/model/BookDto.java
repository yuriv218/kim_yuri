package kh.com.c.model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

/*DROP TABLE BOOK
CASCADE CONSTRAINTS;

DROP SEQUENCE  SEQ_BOOK;


CREATE TABLE BOOK(
	SEQ NUMBER(8) PRIMARY KEY,
	STORE VARCHAR2(100) NOT NULL,
	B_NAME VARCHAR2(50) NOT NULL,
	B_DATE VARCHAR2(50) NOT NULL,
	CONTENT VARCHAR2(4000)
);

CREATE SEQUENCE SEQ_BOOK
START WITH 1 INCREMENT BY 1;

ALTER TABLE BOOK
ADD CONSTRAINT FK_BOOK_STORE FOREIGN KEY(STORE)
REFERENCES MEMBER(STORE);	*/

public class BookDto implements Serializable {
	
	private int seq;
	private String store;
	private String b_name;
	private String b_date;
	private String content;
	
	public BookDto() {}

	public BookDto(int seq, String store, String b_name, String b_date, String content) {
		super();
		this.seq = seq;
		this.store = store;
		this.b_name = b_name;
		this.b_date = b_date;
		this.content = content;
	}

	public BookDto(String store, String b_name, String b_date, String content) {
		super();
		this.store = store;
		this.b_name = b_name;
		this.b_date = b_date;
		this.content = content;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getStore() {
		return store;
	}

	public void setStore(String store) {
		this.store = store;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getB_date() {
		return b_date;
	}

	public void setB_date(String b_date) {
		this.b_date = b_date;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "BookDto [seq=" + seq + ", store=" + store + ", b_name=" + b_name + ", b_date=" + b_date + ", content="
				+ content + "]";
	}
	
	
	
	
	
	
	

}

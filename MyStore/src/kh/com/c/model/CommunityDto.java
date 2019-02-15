package kh.com.c.model;

import java.io.Serializable;

/*DROP TABLE COMMUNITY
CASCADE CONSTRAINTS;

DROP SEQUENCE  SEQ_COMMUNITY;


CREATE TABLE COMMUNITY(
	SEQ NUMBER(8) PRIMARY KEY,
	ID VARCHAR2(50) NOT NULL,
	STORE VARCHAR2(100) NOT NULL,
	TITLE  VARCHAR2(200) NOT NULL,
	CONTENT VARCHAR2(4000) NOT NULL,
	CATEGORY VARCHAR2(50) NOT NULL,
	C_TYPE VARCHAR2(50) NOT NULL,
	REF NUMBER(8) NOT NULL,
	STEP NUMBER(8) NOT NULL,
	DEPTH NUMBER(8) NOT NULL,
	READCOUNT NUMBER(8) NOT NULL,
	DOWNCOUNT NUMBER(8) NOT NULL,
	FILENAME VARCHAR2(50) NOT NULL,
	WDATE DATE NOT NULL,
	DEL NUMBER(1) NOT NULL
	);

CREATE SEQUENCE SEQ_COMMUNITY
START WITH 1 INCREMENT BY 1;

ALTER TABLE COMMUNITY
ADD CONSTRAINT FK_COMMUNITY_ID FOREIGN KEY(ID)
REFERENCES MEMBER(ID);	*/


public class CommunityDto implements Serializable {
	
	private int seq;
	private String id;
	private String store;
	private String title;
	private String content;
	private String category;
	private String c_type;
	private int ref;
	private int step;
	private int depth;
	private int readcount;
	private int downcount;
	private String filename;
	private String wdate;
	private int del;
	
	public CommunityDto() {	}

	public CommunityDto(int seq, String id, String store, String title, String content, String category, String c_type,
			int ref, int step, int depth, int readcount, int downcount, String filename, String wdate, int del) {
		super();
		this.seq = seq;
		this.id = id;
		this.store = store;
		this.title = title;
		this.content = content;
		this.category = category;
		this.c_type = c_type;
		this.ref = ref;
		this.step = step;
		this.depth = depth;
		this.readcount = readcount;
		this.downcount = downcount;
		this.filename = filename;
		this.wdate = wdate;
		this.del = del;
	}
	
	
	//이것도 필요??? 혹시나해서 만듬
	public CommunityDto(String id, String store, String title, String content) {
		super();
		this.id = id;
		this.store = store;
		this.title = title;
		this.content = content;
	}

	

	

	public CommunityDto(String id, String store, String title, String content, String category, String c_type,
			String filename) {
		super();
		this.id = id;
		this.store = store;
		this.title = title;
		this.content = content;
		this.category = category;
		this.c_type = c_type;
		this.filename = filename;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStore() {
		return store;
	}

	public void setStore(String store) {
		this.store = store;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getC_type() {
		return c_type;
	}

	public void setC_type(String c_type) {
		this.c_type = c_type;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public int getDowncount() {
		return downcount;
	}

	public void setDowncount(int downcount) {
		this.downcount = downcount;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
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

	@Override
	public String toString() {
		return "CommunityDto [seq=" + seq + ", id=" + id + ", store=" + store + ", title=" + title + ", content="
				+ content + ", category=" + category + ", c_type=" + c_type + ", ref=" + ref + ", step=" + step
				+ ", depth=" + depth + ", readcount=" + readcount + ", downcount=" + downcount + ", filename="
				+ filename + ", wdate=" + wdate + ", del=" + del + "]";
	}
	
	

}

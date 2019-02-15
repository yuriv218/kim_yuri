package kh.com.c.model;

import java.io.Serializable;

/*DROP TABLE QNA
CASCADE CONSTRAINTS;

DROP SEQUENCE  SEQ_QNA;


CREATE TABLE QNA(
	SEQ NUMBER(8) PRIMARY KEY,
	ID VARCHAR2(50) NOT NULL,
	PAR_ID VARCHAR2(50),
	TITLE  VARCHAR2(200) NOT NULL,
	CONTENT VARCHAR2(4000) NOT NULL,
	REF NUMBER(8) NOT NULL,
	STEP NUMBER(8) NOT NULL,
	DEPTH NUMBER(8) NOT NULL,
	READCOUNT NUMBER(8) NOT NULL,
	WDATE DATE NOT NULL,
	DEL NUMBER(1) NOT NULL,
	RESULT NUMBER(1) NOT NULL
	);

CREATE SEQUENCE SEQ_QNA
START WITH 1 INCREMENT BY 1;
 	*/

public class QnaDto implements Serializable{
	
	private int seq;
	private String id;
	private String par_id;
	private String title;
	private String content;
	private int ref;
	private int step;
	private int depth;
	private int readcount;
	private String wdate;
	private int del;
	private int result;
	
	public QnaDto() {}

	public QnaDto(int seq, String id, String par_id, String title, String content, int ref, int step, int depth,
			int readcount, String wdate, int del, int result) {
		super();
		this.seq = seq;
		this.id = id;
		this.par_id = par_id;
		this.title = title;
		this.content = content;
		this.ref = ref;
		this.step = step;
		this.depth = depth;
		this.readcount = readcount;
		this.wdate = wdate;
		this.del = del;
		this.result = result;
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

	public String getPar_id() {
		return par_id;
	}

	public void setPar_id(String par_id) {
		this.par_id = par_id;
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

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "QnaDto [seq=" + seq + ", id=" + id + ", par_id=" + par_id + ", title=" + title + ", content=" + content
				+ ", ref=" + ref + ", step=" + step + ", depth=" + depth + ", readcount=" + readcount + ", wdate="
				+ wdate + ", del=" + del + ", result=" + result + "]";
	}

	


}
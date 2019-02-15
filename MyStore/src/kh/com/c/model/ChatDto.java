package kh.com.c.model;

/*
DROP TABLE CHAT
CASCADE CONSTRAINTS;

CREATE TABLE CHAT(
	SEQ NUMBER(8) PRIMARY KEY,
	FROMID VARCHAR2(50),
	TOID VARCHAR2(50),
	CHATTITLE VARCHAR2(200),
	CHATCONTENT VARCHAR2(4000),
	CHATTIME DATE
);

CREATE SEQUENCE SEQ_CHAT
START WITH 1
INCREMENT BY 1;

ALTER TABLE CHAT
ADD CONSTRAINT FK_CHAT_FROMID FOREIGN KEY(FROMID)
REFERENCES MEMBER(ID);

ALTER TABLE CHAT
ADD CONSTRAINT FK_CHAT_TOID FOREIGN KEY(TOID)
REFERENCES MEMBER(ID);
 */

public class ChatDto {
	
	private int seq;
	private String fromID;
	private String toID;
	private String chatTitle;
	private String chatContent;
	private String chatTime;
	
	
	public ChatDto() {
	}


	public int getSeq() {
		return seq;
	}


	public void setSeq(int seq) {
		this.seq = seq;
	}


	public String getFromID() {
		return fromID;
	}


	public void setFromID(String fromID) {
		this.fromID = fromID;
	}


	public String getToID() {
		return toID;
	}


	public void setToID(String toID) {
		this.toID = toID;
	}


	public String getChatTitle() {
		return chatTitle;
	}


	public void setChatTitle(String chatTitle) {
		this.chatTitle = chatTitle;
	}


	public String getChatContent() {
		return chatContent;
	}


	public void setChatContent(String chatContent) {
		this.chatContent = chatContent;
	}


	public String getChatTime() {
		return chatTime;
	}


	public void setChatTime(String chatTime) {
		this.chatTime = chatTime;
	}


	public ChatDto(int seq, String fromID, String toID, String chatTitle, String chatContent, String chatTime) {
		super();
		this.seq = seq;
		this.fromID = fromID;
		this.toID = toID;
		this.chatTitle = chatTitle;
		this.chatContent = chatContent;
		this.chatTime = chatTime;
	}
	

}

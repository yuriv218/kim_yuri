package kh.com.c.model;

import java.io.Serializable;
/*
select * from money;

DROP TABLE MONEY
CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_MONEY;

CREATE TABLE MONEY(
SEQ NUMBER(8) PRIMARY KEY,
ID VARCHAR2(100) NOT NULL,
M_TYPE VARCHAR2(50) NOT NULL,
PAYMENT VARCHAR2(50) NOT NULL,
M_DATE DATE NOT NULL,
P_NAME VARCHAR2(50) NOT NULL,
STORE VARCHAR2(100) NOT NULL,
PRICE  NUMBER(8)  NOT NULL,
AMOUNT NUMBER(8)  NOT NULL,
VAT NUMBER(10) NOT NULL,
PRICE_TOTAL NUMBER(10) NOT NULL,
MEMO VARCHAR2(4000) NOT NULL
);

CREATE SEQUENCE SEQ_MONEY
START WITH 1 INCREMENT BY 1;

ALTER TABLE MONEY
ADD CONSTRAINT FK_MONEY_ID FOREIGN KEY(ID)
REFERENCES MEMBER(ID);	
*/
public class MoneyDto implements Serializable {
	
	
	private int seq;
	private String id;
	private String m_type;
	private String payment;
	private String m_date;
	private String p_name;
	private String store;
	private int price;
	private int amount;
	private int vat;
	private int price_total;
	private String memo;
	
	public MoneyDto() {	}

	public MoneyDto(int seq, String id, String m_type, String payment, String m_date, String p_name, String store,
			int price, int amount, int vat, int price_total, String memo) {
		super();
		this.seq = seq;
		this.id = id;
		this.m_type = m_type;
		this.payment = payment;
		this.m_date = m_date;
		this.p_name = p_name;
		this.store = store;
		this.price = price;
		this.amount = amount;
		this.vat = vat;
		this.price_total = price_total;
		this.memo = memo;
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

	public String getM_type() {
		return m_type;
	}

	public void setM_type(String m_type) {
		this.m_type = m_type;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getM_date() {
		return m_date;
	}

	public void setM_date(String m_date) {
		this.m_date = m_date;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getStore() {
		return store;
	}

	public void setStore(String store) {
		this.store = store;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getVat() {
		return vat;
	}

	public void setVat(int vat) {
		this.vat = vat;
	}

	public int getPrice_total() {
		return price_total;
	}

	public void setPrice_total(int price_total) {
		this.price_total = price_total;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	@Override
	public String toString() {
		return "MoneyDto [seq=" + seq + ", id=" + id + ", m_type=" + m_type + ", payment=" + payment + ", m_date="
				+ m_date + ", p_name=" + p_name + ", store=" + store + ", price=" + price + ", amount=" + amount
				+ ", vat=" + vat + ", price_total=" + price_total + ", memo=" + memo + "]";
	}


	
	

}

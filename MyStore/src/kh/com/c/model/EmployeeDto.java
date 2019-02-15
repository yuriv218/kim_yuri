package kh.com.c.model;

import java.io.Serializable;

/*

DROP TABLE EMPLOYEE
CASCADE CONSTRAINTS;

DROP SEQUENCE  SEQ_EMPLOYEE;


CREATE TABLE EMPLOYEE(
	SEQ NUMBER(8) PRIMARY KEY,
	STORE VARCHAR2(100) NOT NULL,
	E_NAME VARCHAR2(50) NOT NULL,
	E_TEL VARCHAR2(50) NOT NULL,
	E_LEVEL VARCHAR2(50) NOT NULL,
	SALARY NUMBER(8) NOT NULL,
	E_DATE DATE NOT NULL,
	TOTAL NUMBER(8),
	S_TOTAL NUMBER(8)
	);

CREATE SEQUENCE SEQ_EMPLOYEE
START WITH 1 INCREMENT BY 1;

ALTER TABLE EMPLOYEE
ADD CONSTRAINT FK_EMPLOYEE_STORE FOREIGN KEY(STORE)
REFERENCES MEMBER(STORE);	
*/

public class EmployeeDto implements Serializable {

	private int seq;
	private String store;
	private String e_name;
	private String e_tel;
	private String e_level;
	private int salary;
	private String e_date;
	private int total;
	private int s_total;
	
	public EmployeeDto() {}

	public EmployeeDto(int seq, String store, String e_name, String e_tel, String e_level, int salary, String e_date,
			int total, int s_total) {
		super();
		this.seq = seq;
		this.store = store;
		this.e_name = e_name;
		this.e_tel = e_tel;
		this.e_level = e_level;
		this.salary = salary;
		this.e_date = e_date;
		this.total = total;
		this.s_total = s_total;
	}
	
	public EmployeeDto(String store, String e_name, String e_tel, String e_level, int salary, String e_date,
			int total, int s_total) {
		super();
		this.store = store;
		this.e_name = e_name;
		this.e_tel = e_tel;
		this.e_level = e_level;
		this.salary = salary;
		this.e_date = e_date;
		this.total = total;
		this.s_total = s_total;
	}

	
	public EmployeeDto(int seq, int total) {
		super();
		this.seq = seq;
		this.total = total;
	}
	
	public EmployeeDto(int seq, int salary, int total) {
		super();
		this.seq = seq;
		this.salary = salary;
		this.total = total;
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

	public String getE_name() {
		return e_name;
	}

	public void setE_name(String e_name) {
		this.e_name = e_name;
	}

	public String getE_tel() {
		return e_tel;
	}

	public void setE_tel(String e_tel) {
		this.e_tel = e_tel;
	}

	public String getE_level() {
		return e_level;
	}

	public void setE_level(String e_level) {
		this.e_level = e_level;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getE_date() {
		return e_date;
	}

	public void setE_date(String e_date) {
		this.e_date = e_date;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
	
	

	public int getS_total() {
		return s_total;
	}

	public void setS_total(int s_total) {
		this.s_total = s_total;
	}

	@Override
	public String toString() {
		return "EmployeeDto [seq=" + seq + ", store=" + store + ", e_name=" + e_name + ", e_tel=" + e_tel + ", e_level="
				+ e_level + ", salary=" + salary + ", e_date=" + e_date + ", total=" + total + ", s_total=" + s_total
				+ "]";
	}

	
}

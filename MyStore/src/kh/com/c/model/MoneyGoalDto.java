package kh.com.c.model;

/*
 * DROP TABLE MONEY_GOAL CASCADE CONSTRAINTS;
DROP SEQUENCE SEQ_MONEY_GOAL;

CREATE TABLE MONEY_GOAL(
SEQ NUMBER(8) PRIMARY KEY,
ID VARCHAR2(100) UNIQUE,
PERWEEK NUMBER(10) NOT NULL,
PERMONTH NUMBER(10) NOT NULL,
PERYEAR NUMBER(10) NOT NULL,
PERWEEK_PURE NUMBER(10) NOT NULL,
PERMONTH_PURE NUMBER(10) NOT NULL,
PERYEAR_PURE NUMBER(10) NOT NULL
);


CREATE SEQUENCE SEQ_MONEY_GOAL
START WITH 1 INCREMENT BY 1;

ALTER TABLE MONEY_GOAL
ADD CONSTRAINT FK_MONEY_GOAL_ID FOREIGN KEY(ID)
REFERENCES MEMBER(ID);	
*/
public class MoneyGoalDto {

	private String id;
	private int perWeek;
	private int perMonth;
	private int perYear;
	private int perWeek_pure;
	private int perMonth_pure;
	private int perYear_pure;
	
	
	public MoneyGoalDto() {
		// TODO Auto-generated constructor stub
	}


	public MoneyGoalDto(String id, int perWeek, int perMonth, int perYear, int perWeek_pure, int perMonth_pure, int perYear_pure) {
		super();
		this.id = id;
		this.perWeek = perWeek;
		this.perMonth = perMonth;
		this.perYear = perYear;
		this.perWeek_pure = perWeek_pure;
		this.perMonth_pure = perMonth_pure;
		this.perYear_pure = perYear_pure;
	}

	
	
	

	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public int getPerWeek() {
		return perWeek;
	}


	public void setPerWeek(int perWeek) {
		this.perWeek = perWeek;
	}


	public int getPerMonth() {
		return perMonth;
	}


	public void setPerMonth(int perMonth) {
		this.perMonth = perMonth;
	}


	public int getPerYear() {
		return perYear;
	}


	public void setPerYear(int perYear) {
		this.perYear = perYear;
	}


	public int getPerWeek_pure() {
		return perWeek_pure;
	}


	public void setPerWeek_pure(int perWeek_pure) {
		this.perWeek_pure = perWeek_pure;
	}


	public int getPerMonth_pure() {
		return perMonth_pure;
	}


	public void setPerMonth_pure(int perMonth_pure) {
		this.perMonth_pure = perMonth_pure;
	}


	public int getPerYear_pure() {
		return perYear_pure;
	}


	public void setPerYear_pure(int perYear_pure) {
		this.perYear_pure = perYear_pure;
	}


	@Override
	public String toString() {
		return "MoneyGoalDto [id=" + id + ", perWeek=" + perWeek + ", perMonth=" + perMonth + ", perYear=" + perYear
				+ ", perWeek_pure=" + perWeek_pure + ", perMonth_pure=" + perMonth_pure + ", perYear_pure="
				+ perYear_pure + "]";
	}



}

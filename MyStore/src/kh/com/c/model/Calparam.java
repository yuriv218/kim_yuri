package kh.com.c.model;

import java.io.Serializable;

public class Calparam implements Serializable {

	private int seq;
	private String id;
	
	private String store;	
	private String b_date;
	private String b_name;	
	private String content;
	
	private int year;
	private int month;
	private int day;
	private int hour;
	private int min;
	
	
	public Calparam() {
		// TODO Auto-generated constructor stub
	}


	public Calparam(int seq, String id, String store, String b_date, String b_name, String content, int year, int month,
			int day, int hour, int min) {
		super();
		this.seq = seq;
		this.id = id;
		this.store = store;
		this.b_date = b_date;
		this.b_name = b_name;
		this.content = content;
		this.year = year;
		this.month = month;
		this.day = day;
		this.hour = hour;
		this.min = min;
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


	public String getB_date() {
		return b_date;
	}


	public void setB_date(String b_date) {
		this.b_date = b_date;
	}


	public String getB_name() {
		return b_name;
	}


	public void setB_name(String b_name) {
		this.b_name = b_name;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public int getYear() {
		return year;
	}


	public void setYear(int year) {
		this.year = year;
	}


	public int getMonth() {
		return month;
	}


	public void setMonth(int month) {
		this.month = month;
	}


	public int getDay() {
		return day;
	}


	public void setDay(int day) {
		this.day = day;
	}


	public int getHour() {
		return hour;
	}


	public void setHour(int hour) {
		this.hour = hour;
	}


	public int getMin() {
		return min;
	}


	public void setMin(int min) {
		this.min = min;
	}


	@Override
	public String toString() {
		return "Calparam [seq=" + seq + ", id=" + id + ", store=" + store + ", b_date=" + b_date + ", b_name=" + b_name
				+ ", content=" + content + ", year=" + year + ", month=" + month + ", day=" + day + ", hour=" + hour
				+ ", min=" + min + "]";
	}
	
	
	
}

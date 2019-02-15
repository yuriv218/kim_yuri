package kh.com.c.model;

import java.io.Serializable;

public class CalEmp implements Serializable {

	private int seq;
	private String id;
	private String store;
	
	private String e_name;
	private String e_tel;
	private String e_level;
	private int salary;
	
	private int year;
	private int month;
	private int day;
	
	public CalEmp() {
		// TODO Auto-generated constructor stub
	}

	public CalEmp(int seq, String id, String store, String e_name, String e_tel, String e_level, int salary,
			int year, int month, int day) {
		super();
		this.seq = seq;
		this.id = id;
		this.store = store;
		this.e_name = e_name;
		this.e_tel = e_tel;
		this.e_level = e_level;
		this.salary = salary;
		this.year = year;
		this.month = month;
		this.day = day;
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
	
	
}

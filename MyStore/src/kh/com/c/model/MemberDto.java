package kh.com.c.model;
/*
DROP TABLE MEMBER
CASCADE CONSTRAINTS;


CREATE TABLE MEMBER(
	ID VARCHAR2(50) PRIMARY KEY,
	PWD VARCHAR2(50) NOT NULL,
	NAME VARCHAR2(50) NOT NULL,
	STORE VARCHAR2(100) UNIQUE,
	EMAIL VARCHAR2(50) UNIQUE,
	ADDRESS VARCHAR2(300) NOT NULL,
	PHONE VARCHAR2(50) NOT NULL,
	VAT_RATIO NUMBER(8),
	IMAGE VARCHAR2(100),
	DETAIL VARCHAR2(4000),
	AUTH NUMBER(1) NOT NULL
	);*/

import java.io.Serializable;

public class MemberDto implements Serializable {
	
	private String id;
	private String pwd;
	private String name;
	private String store;
	private String email;
	private String address;
	private String phone;
	private String detail;
	private String image;
	private int auth;
	
	public MemberDto() {}

	public MemberDto(String id, String pwd, String name, String store, String email, String address, String phone,
			 String detail, String image, int auth) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.store = store;
		this.email = email;
		this.address = address;
		this.phone = phone;
		this.detail = detail;
		this.image = image;
		this.auth = auth;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStore() {
		return store;
	}

	public void setStore(String store) {
		this.store = store;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	@Override
	public String toString() {
		return "MemberDto [id=" + id + ", pwd=" + pwd + ", name=" + name + ", store=" + store + ", email=" + email
				+ ", address=" + address + ", phone=" + phone + ", vat_ratio=" + ", detail=" + detail
				+ ", image=" + image + ", auth=" + auth + "]";
	}

	
}

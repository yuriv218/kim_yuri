package kh.com.c.model;

import java.io.Serializable;

public class MontlyChartDto implements Serializable {
	
	private String id;
	private String syear;
	private String eyear;
	
	public MontlyChartDto() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSyear() {
		return syear;
	}

	public void setSyear(String syear) {
		this.syear = syear;
	}

	public String getEyear() {
		return eyear;
	}

	public void setEyear(String eyear) {
		this.eyear = eyear;
	}

	public MontlyChartDto(String id, String syear, String eyear) {
		super();
		this.id = id;
		this.syear = syear;
		this.eyear = eyear;
	}

	public MontlyChartDto(String syear, String eyear) {
		super();
		this.syear = syear;
		this.eyear = eyear;
	}

	@Override
	public String toString() {
		return "MontlyChartDto [id=" + id + ", syear=" + syear + ", eyear=" + eyear + "]";
	}


	
}

package kh.com.c.model;

public class MoneyParam {

	
	private String id;
	private String m_type;
	private String startDate;
	private String endDate;
	
	
	public MoneyParam() {
		// TODO Auto-generated constructor stub
	}


	public MoneyParam(String id, String m_type, String startDate, String endDate) {
		super();
		this.id = id;
		this.m_type = m_type;
		this.startDate = startDate;
		this.endDate = endDate;
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


	public String getStartDate() {
		return startDate;
	}


	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}


	public String getEndDate() {
		return endDate;
	}


	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}


	@Override
	public String toString() {
		return "MoneyParam [id=" + id + ", m_type=" + m_type + ", startDate=" + startDate + ", endDate=" + endDate
				+ "]";
	}
	
	
}

package kh.com.c.model;

import java.io.Serializable;

public class MontlyChartDto3 implements Serializable {

	// 1~12월까지 매출 매입 묶은거
	private String sales;		
	private String product;	
	
	// 매출 현금 카드
	private double sCard;
	private double sCash;
	// 매입 현금 카드
	private double pCard;
	private double pCash;
	
	
	
	public MontlyChartDto3() {
		// TODO Auto-generated constructor stub
	}

	public String getSales() {
		return sales;
	}

	public void setSales(String sales) {
		this.sales = sales;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public MontlyChartDto3(String sales, String product) {
		super();
		this.sales = sales;
		this.product = product;
	}
	
	

	

	public MontlyChartDto3(double sCard, double sCash, double pCard, double pCash) {
		super();
		this.sCard = sCard;
		this.sCash = sCash;
		this.pCard = pCard;
		this.pCash = pCash;
	}

	public double getsCard() {
		return sCard;
	}

	public void setsCard(double sCard) {
		this.sCard = sCard;
	}

	public double getsCash() {
		return sCash;
	}

	public void setsCash(double sCash) {
		this.sCash = sCash;
	}

	public double getpCard() {
		return pCard;
	}

	public void setpCard(double pCard) {
		this.pCard = pCard;
	}

	public double getpCash() {
		return pCash;
	}

	public void setpCash(double pCash) {
		this.pCash = pCash;
	}

	@Override
	public String toString() {
		return "MontlyChartDto3 [sales=" + sales + ", product=" + product + "]";
	}
	
	
	
}

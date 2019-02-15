package kh.com.c.model;

import java.io.Serializable;

public class MontlyChartDto2 implements Serializable {
	
	private int sales1;			// 매출
	private int sales2;
	private int sales3;
	private int sales4;
	private int sales5;
	private int sales6;
	private int sales7;
	private int sales8;
	private int sales9;
	private int sales10;
	private int sales11;
	private int sales12;
	
	private int product1;		// 매입
	private int product2;
	private int product3;
	private int product4;
	private int product5;
	private int product6;
	private int product7;
	private int product8;
	private int product9;
	private int product10;
	private int product11;
	private int product12;
	
	
	////
	private String max;
	private int _max;
	private String min;
	private int _min;
	
	private String month;		// 순수익...
	private int _month;
	private String profit;
	
	public MontlyChartDto2() {
		// TODO Auto-generated constructor stub
	}
	
	public int getSales1() {
		return sales1;
	}
	public void setSales1(int sales1) {
		this.sales1 = sales1;
	}
	public int getSales2() {
		return sales2;
	}
	public void setSales2(int sales2) {
		this.sales2 = sales2;
	}
	public int getSales3() {
		return sales3;
	}
	public void setSales3(int sales3) {
		this.sales3 = sales3;
	}
	public int getSales4() {
		return sales4;
	}
	public void setSales4(int sales4) {
		this.sales4 = sales4;
	}
	public int getSales5() {
		return sales5;
	}
	public void setSales5(int sales5) {
		this.sales5 = sales5;
	}
	public int getSales6() {
		return sales6;
	}
	public void setSales6(int sales6) {
		this.sales6 = sales6;
	}
	public int getSales7() {
		return sales7;
	}
	public void setSales7(int sales7) {
		this.sales7 = sales7;
	}
	public int getSales8() {
		return sales8;
	}
	public void setSales8(int sales8) {
		this.sales8 = sales8;
	}
	public int getSales9() {
		return sales9;
	}
	public void setSales9(int sales9) {
		this.sales9 = sales9;
	}
	public int getSales10() {
		return sales10;
	}
	public void setSales10(int sales10) {
		this.sales10 = sales10;
	}
	public int getSales11() {
		return sales11;
	}
	public void setSales11(int sales11) {
		this.sales11 = sales11;
	}
	public int getSales12() {
		return sales12;
	}
	public void setSales12(int sales12) {
		this.sales12 = sales12;
	}
	public int getProduct1() {
		return product1;
	}
	public void setProduct1(int product1) {
		this.product1 = product1;
	}
	public int getProduct2() {
		return product2;
	}
	public void setProduct2(int product2) {
		this.product2 = product2;
	}
	public int getProduct3() {
		return product3;
	}
	public void setProduct3(int product3) {
		this.product3 = product3;
	}
	public int getProduct4() {
		return product4;
	}
	public void setProduct4(int product4) {
		this.product4 = product4;
	}
	public int getProduct5() {
		return product5;
	}
	public void setProduct5(int product5) {
		this.product5 = product5;
	}
	public int getProduct6() {
		return product6;
	}
	public void setProduct6(int product6) {
		this.product6 = product6;
	}
	public int getProduct7() {
		return product7;
	}
	public void setProduct7(int product7) {
		this.product7 = product7;
	}
	public int getProduct8() {
		return product8;
	}
	public void setProduct8(int product8) {
		this.product8 = product8;
	}
	public int getProduct9() {
		return product9;
	}
	public void setProduct9(int product9) {
		this.product9 = product9;
	}
	public int getProduct10() {
		return product10;
	}
	public void setProduct10(int product10) {
		this.product10 = product10;
	}
	public int getProduct11() {
		return product11;
	}
	public void setProduct11(int product11) {
		this.product11 = product11;
	}
	public int getProduct12() {
		return product12;
	}
	public void setProduct12(int product12) {
		this.product12 = product12;
	}

	
	public MontlyChartDto2(int sales1, int sales2, int sales3, int sales4, int sales5, int sales6, int sales7,
			int sales8, int sales9, int sales10, int sales11, int sales12, int product1, int product2, int product3,
			int product4, int product5, int product6, int product7, int product8, int product9, int product10,
			int product11, int product12) {
		super();
		this.sales1 = sales1;
		this.sales2 = sales2;
		this.sales3 = sales3;
		this.sales4 = sales4;
		this.sales5 = sales5;
		this.sales6 = sales6;
		this.sales7 = sales7;
		this.sales8 = sales8;
		this.sales9 = sales9;
		this.sales10 = sales10;
		this.sales11 = sales11;
		this.sales12 = sales12;
		this.product1 = product1;
		this.product2 = product2;
		this.product3 = product3;
		this.product4 = product4;
		this.product5 = product5;
		this.product6 = product6;
		this.product7 = product7;
		this.product8 = product8;
		this.product9 = product9;
		this.product10 = product10;
		this.product11 = product11;
		this.product12 = product12;
	}

	public MontlyChartDto2(String max, int _max, String min, int _min) {
		super();
		this.max = max;
		this._max = _max;
		this.min = min;
		this._min = _min;
	}

	public String getMax() {
		return max;
	}

	public void setMax(String max) {
		this.max = max;
	}

	public int get_max() {
		return _max;
	}

	public void set_max(int _max) {
		this._max = _max;
	}

	public String getMin() {
		return min;
	}

	public void setMin(String min) {
		this.min = min;
	}

	public int get_min() {
		return _min;
	}

	public void set_min(int _min) {
		this._min = _min;
	}

	@Override
	public String toString() {
		return "MontlyChartDto2 [sales1=" + sales1 + ", sales2=" + sales2 + ", sales3=" + sales3 + ", sales4=" + sales4
				+ ", sales5=" + sales5 + ", sales6=" + sales6 + ", sales7=" + sales7 + ", sales8=" + sales8
				+ ", sales9=" + sales9 + ", sales10=" + sales10 + ", sales11=" + sales11 + ", sales12=" + sales12
				+ ", product1=" + product1 + ", product2=" + product2 + ", product3=" + product3 + ", product4="
				+ product4 + ", product5=" + product5 + ", product6=" + product6 + ", product7=" + product7
				+ ", product8=" + product8 + ", product9=" + product9 + ", product10=" + product10 + ", product11="
				+ product11 + ", product12=" + product12 + "]";
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public int get_month() {
		return _month;
	}

	public void set_month(int _month) {
		this._month = _month;
	}

	public String getProfit() {
		return profit;
	}

	public void setProfit(String profit) {
		this.profit = profit;
	}

	public MontlyChartDto2(String month, int _month, String profit) {
		super();
		this.month = month;
		this._month = _month;
		this.profit = profit;
	}


	
	
	
	

}

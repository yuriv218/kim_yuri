package kh.com.c.util;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import kh.com.c.model.MoneyDto;
import kh.com.c.model.MontlyChartDto;
import kh.com.c.model.MontlyChartDto2;
import kh.com.c.model.MontlyChartDto3;

public class CalendarUtil {
	//3 ->03
	public static String two(int tt){
		String ss="";
		return (tt+"").length()>1?(tt+""):"0"+tt;
	}
	public static String yyyymm(int year, int month){
		return ""+year+two(month);
	}
	public static String yyyymmdd(int year, int month, int day){
		return yyyymm(year,month)+two(day);
	}
	public static String yyyymmddhhmm(int year, int month, int day,
			int hour, int min){
		return yyyymmdd(year,month,day)+two(hour)+two(min);
	}
	public static int one(String tt){
		if(tt.charAt(0)=='0'){
			return Integer.parseInt(""+tt.charAt(1));
		}else{
			return Integer.parseInt(tt);
		}
	}
	public static int toOne(String tt){
		if(tt.charAt(0)=='0'){
			return Integer.parseInt(""+tt.charAt(1));
		}else{
			return Integer.parseInt(tt);
		}
	}
	
	public static Calendar toCalendar(int year, int month, int day){
		Calendar cal=Calendar.getInstance();
		cal.set(year, month-1, day);
		return cal;
	}
	
	public static Date toDate(int year, int month, int day){
		return toCalendar(year,month,day).getTime();
	}
	
	public static java.sql.Date toSqlDate(int year, int month, int day){
		//SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String s=""+year+"-"+two(month)+"-"+two(day);
		return java.sql.Date.valueOf(s);
	}	
	
	
	///////////////////////////////////////////////////////////////////////
	
	public static int Replace(String _date) {
		_date = _date.replaceAll("-", "");
		_date = _date.substring(0, 8);
		return Integer.parseInt(_date);		
	}
	
	public static int Replace2(String _date) {
		_date = _date.replaceAll("-", "");
		_date = _date.substring(4, 6);
		return Integer.parseInt(_date);		
	}
	
	public static int CalDate() {
		Calendar cal = Calendar.getInstance();

		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		int day = cal.get(Calendar.DATE);

		String date = year+ "" + two(month) + two(day);
		
		return Integer.parseInt(date);	  
	}
	
	public static String Date(int _date) {
		String date = _date + "";
		String year = date.substring(0,4);
		String month = date.substring(4,6);
		String day = date.substring(6,8);
		date = year + "-" + month + "-" + day;
		return date;
	}
	
	
	public static MontlyChartDto montlyDate(String year) {
		
		int _sdate = Integer.parseInt(year.substring(2,4))-1;
		int _edate = Integer.parseInt(year.substring(2,4))+1;
		
		String sdate = _sdate + "/" + "12/31";
		String edate = _edate + "/" + "01/01";
		
		MontlyChartDto dto = new MontlyChartDto(sdate, edate);
		return dto;
	}
	
	public static MontlyChartDto2 montlyChart2(List<MoneyDto> list) {
		MontlyChartDto2 dto2 = new MontlyChartDto2();		
		
		for(int i = 0 ; i < list.size(); i++) {
			MoneyDto dto = list.get(i);
			int total = dto.getAmount() * dto.getPrice();
			
			if(dto.getM_type().equals("매출")) {
				
				if(Replace2(dto.getM_date()) == 1){
					dto2.setSales1(dto2.getSales1() + total);					
				}else if(Replace2(dto.getM_date()) == 2) {
					dto2.setSales2(dto2.getSales2() + total);	
				}else if(Replace2(dto.getM_date()) == 3) {
					dto2.setSales3(dto2.getSales3() + total);	
				}else if(Replace2(dto.getM_date()) == 4) {
					dto2.setSales4(dto2.getSales4() + total);	
				}else if(Replace2(dto.getM_date()) == 5) {
					dto2.setSales5(dto2.getSales5() + total);	
				}else if(Replace2(dto.getM_date()) == 6) {
					dto2.setSales6(dto2.getSales6() + total);	
				}else if(Replace2(dto.getM_date()) == 7) {
					dto2.setSales7(dto2.getSales7() + total);	
				}else if(Replace2(dto.getM_date()) == 8) {
					dto2.setSales8(dto2.getSales8() + total);	
				}else if(Replace2(dto.getM_date()) == 9) {
					dto2.setSales9(dto2.getSales9() + total);	
				}else if(Replace2(dto.getM_date()) == 10) {
					dto2.setSales10(dto2.getSales10() + total);	
				}else if(Replace2(dto.getM_date()) == 11) {
					dto2.setSales11(dto2.getSales11() + total);	
				}else if(Replace2(dto.getM_date()) == 12) {
					dto2.setSales12(dto2.getSales12() + total);	
				}
				
				
				
			}else if(dto.getM_type().equals("매입")) {

				if(Replace2(dto.getM_date()) == 1){
					dto2.setProduct1(dto2.getProduct1() + total);
				}else if(Replace2(dto.getM_date()) == 2) {
					dto2.setProduct2(dto2.getProduct2() + total);
				}else if(Replace2(dto.getM_date()) == 3) {
					dto2.setProduct3(dto2.getProduct3() + total);
				}else if(Replace2(dto.getM_date()) == 4) {
					dto2.setProduct4(dto2.getProduct4() + total);
				}else if(Replace2(dto.getM_date()) == 5) {
					dto2.setProduct5(dto2.getProduct5() + total);
				}else if(Replace2(dto.getM_date()) == 6) {
					dto2.setProduct6(dto2.getProduct6() + total);	
				}else if(Replace2(dto.getM_date()) == 7) {
					dto2.setProduct7(dto2.getProduct7() + total);
				}else if(Replace2(dto.getM_date()) == 8) {  
					dto2.setProduct8(dto2.getProduct8() + total);
				}else if(Replace2(dto.getM_date()) == 9) {
					dto2.setProduct9(dto2.getProduct9() + total);
				}else if(Replace2(dto.getM_date()) == 10) {
					dto2.setProduct10(dto2.getProduct10() + total);	
				}else if(Replace2(dto.getM_date()) == 11) {
					dto2.setProduct11(dto2.getProduct11() + total);
				}else if(Replace2(dto.getM_date()) == 12) {
					dto2.setProduct12(dto2.getProduct12() + total);
				}
			}
		}

		return dto2;
	}
	
	
	public static MontlyChartDto3 montlyChart3(MontlyChartDto2 dto) {
		String sales = "";
		String product = "";
		
		sales = dto.getSales1() + "," + dto.getSales2() + "," + 
				dto.getSales3() + "," + dto.getSales4() + "," + 
				dto.getSales5() + "," + dto.getSales6() + "," + 
				dto.getSales7() + "," + dto.getSales8() + "," + 
				dto.getSales9() + "," + dto.getSales10() + "," + 
				dto.getSales11() + "," + dto.getSales12();
		
		product = dto.getProduct1() + "," + dto.getProduct2() + "," +
				dto.getProduct3() + "," + dto.getProduct4() + "," + 
				dto.getProduct5() + "," + dto.getProduct6() + "," + 
				dto.getProduct7() + "," + dto.getProduct8() + "," + 
				dto.getProduct9() + "," + dto.getProduct10() + "," + 
				dto.getProduct11() + "," + dto.getProduct12();
		
		MontlyChartDto3 dto3 = new MontlyChartDto3(sales, product);
		return dto3;		
	}
	
/*	public static MontlyChartDto2 maximumProfit(MontlyChartDto2 dto) {
		
		int n[] = {dto.getSales1(), dto.getSales2(), dto.getSales3(), dto.getSales4(),
				   dto.getSales5(),dto.getSales6(), dto.getSales7(),dto.getSales8(),
				   dto.getSales9(),dto.getSales10(), dto.getSales11(),dto.getSales12()};
		
		int max = n[0];
		int _max = 1;
		
		int min = n[0];
		int _min = 1;
		
		for(int i = 1 ; i < n.length ; i++) {
			if(n[i] > max) {
				max = n[i];
				_max = i+1;
			}else if(n[i] < min) {
				min = n[i];
				_min = i+1;
			}
		}
		
		String smax = String.format("%,d원", max);
		String smin = String.format("%,d원", min);
		
		MontlyChartDto2 dto2 = new MontlyChartDto2(smax, _max, smin, _min);
		
		return dto2;		
	}
	
*/
	public static MontlyChartDto2 montlyChart4(MontlyChartDto2 dto) {
		
		String profit="";

		int month1 = dto.getSales1() - dto.getProduct1();
		int month2 = dto.getSales2() - dto.getProduct2();
		int month3 = dto.getSales3() - dto.getProduct3();
		int month4 = dto.getSales4() - dto.getProduct4();
		int month5 = dto.getSales5() - dto.getProduct5();
		int month6 = dto.getSales6() - dto.getProduct6();
		int month7 = dto.getSales7() - dto.getProduct7();
		int month8 = dto.getSales8() - dto.getProduct8();
		int month9 = dto.getSales9() - dto.getProduct9();
		int month10 = dto.getSales10() - dto.getProduct10();
		int month11 = dto.getSales11() - dto.getProduct11();
		int month12 = dto.getSales12() - dto.getProduct12();
		
		int n[] = {month1, month2, month3, month4, month5, month6, month7, month8, month9, month10, month11, month12};
		int month = n[0];		// 최고 순이익 액수
		int _month = 1;			// 최고 순이익 월
		
		for(int i = 1 ; i < n.length ; i++) {
			if(n[i] > month) {
				month = n[i];
				_month = i+1;
			}
		}
		
		String smonth = String.format("%,d원", month);	
		
		profit = month1 + "," +month2 + "," +month3 + "," +
				month4 + "," +month5 + "," +month6 + "," +
				month7 + "," +month8 + "," +month9 + "," +
				month10 + "," +month11 + "," +month12;
		
		
		MontlyChartDto2 totalprofit = new MontlyChartDto2(smonth, _month, profit);
		
		
		return totalprofit;
		
	}
	
	public static MontlyChartDto total(MontlyChartDto2 dto2) {		// 년도별 총액들
		int totalSales = dto2.getSales1() + dto2.getSales2() + dto2.getSales3()
						+ dto2.getSales4() + dto2.getSales5() + dto2.getSales6() 
						+ dto2.getSales7() + dto2.getSales8() + dto2.getSales9() 
						+ dto2.getSales10() + dto2.getSales11() + dto2.getSales12();
		int totalProduct = dto2.getProduct1() +dto2.getProduct2() +dto2.getProduct3()
							+dto2.getProduct4() +dto2.getProduct5() 
							+dto2.getProduct6() +dto2.getProduct7() +dto2.getProduct8() +dto2.getProduct9() 
							+dto2.getProduct10() +dto2.getProduct11() +dto2.getProduct12();
		
		int totalProfit = totalSales - totalProduct;
		
		String sTotalSales = String.format("%,d원", totalSales);
		String stotalProduct = String.format("%,d원", totalProduct);
		String stotalProfit = String.format("%,d원", totalProfit);
		
		System.out.println("totalprofit"+stotalProfit); 
		System.out.println("stotalProduct"+stotalProduct); 
		System.out.println("sTotalSales"+sTotalSales); 
		
		MontlyChartDto dto = new MontlyChartDto(sTotalSales, stotalProduct, stotalProfit);
		return dto;		
	}
	
	
	
	
	
	public static List<MoneyDto> table1(List<MoneyDto> RealList) {
		
		List<MoneyDto> sales = new ArrayList<>();	// 매출
		
		for(int i = 0 ; i < RealList.size() ; i++) {
			MoneyDto dto = RealList.get(i);
			
			if(dto.getM_type().equals("매출")) {

				int totalprice = dto.getAmount()*dto.getPrice();
				String stotalprice = String.format("%,d", totalprice);
				dto.setMemo(stotalprice);  // 매출액 원단위 계산한거 타입에 넣을거야...
				
				sales.add(RealList.get(i));
			}
			System.out.println(dto.toString());
		}	
		return sales;
	}
	
	
	public static List<MoneyDto> table2(List<MoneyDto> RealList) {
		
		List<MoneyDto> product = new ArrayList<>();	// 매입
		
		for(int i = 0 ; i < RealList.size() ; i++) {
			MoneyDto dto = RealList.get(i);
			
			if(dto.getM_type().equals("매입")) {
				int totalprice = dto.getAmount()*dto.getPrice();
				String stotalprice = String.format("%,d", totalprice);
				dto.setMemo(stotalprice);  // 매출액 원단위 계산한거 메모에...
				
				
				product.add(RealList.get(i));
			}	
			System.out.println(dto.toString());
		}	
		return product;
		
	}

	public static List<MontlyChartDto> table3(MontlyChartDto2 dto2) {
		
		List<MontlyChartDto> tablelist = new ArrayList<>();
		
		String sales = String.format("%,d", dto2.getSales1());
		String product = String.format("%,d", dto2.getProduct1());
		String profit = String.format("%,d", dto2.getSales1() - dto2.getProduct1());
		
		MontlyChartDto dto = new MontlyChartDto(sales, product, profit);
		tablelist.add(dto);
		
		sales = String.format("%,d", dto2.getSales2());
		product = String.format("%,d", dto2.getProduct2());
		profit = String.format("%,d", dto2.getSales2() - dto2.getProduct2()); 
		dto = new MontlyChartDto(sales, product, profit);
		tablelist.add(dto);
		
		sales = String.format("%,d", dto2.getSales3());
		product = String.format("%,d", dto2.getProduct3());
		profit = String.format("%,d", dto2.getSales3() - dto2.getProduct3()); 
		dto = new MontlyChartDto(sales, product, profit);
		tablelist.add(dto);
		
		sales = String.format("%,d", dto2.getSales4());
		product = String.format("%,d", dto2.getProduct4());
		profit = String.format("%,d", dto2.getSales4() - dto2.getProduct4()); 
		dto = new MontlyChartDto(sales, product, profit);
		tablelist.add(dto);
		
		sales = String.format("%,d", dto2.getSales5());
		product = String.format("%,d", dto2.getProduct2());
		profit = String.format("%,d", dto2.getSales5() - dto2.getProduct5()); 
		dto = new MontlyChartDto(sales, product, profit);
		tablelist.add(dto);
		
		sales = String.format("%,d", dto2.getSales6());
		product = String.format("%,d", dto2.getProduct6());
		profit = String.format("%,d", dto2.getSales6() - dto2.getProduct6()); 
		dto = new MontlyChartDto(sales, product, profit);
		tablelist.add(dto);
		
		sales = String.format("%,d", dto2.getSales7());
		product = String.format("%,d", dto2.getProduct7());
		profit = String.format("%,d", dto2.getSales7() - dto2.getProduct7()); 
		dto = new MontlyChartDto(sales, product, profit);
		tablelist.add(dto);
		
		sales = String.format("%,d", dto2.getSales8());
		product = String.format("%,d", dto2.getProduct8());
		profit = String.format("%,d", dto2.getSales8() - dto2.getProduct8()); 
		dto = new MontlyChartDto(sales, product, profit);
		tablelist.add(dto);
		
		sales = String.format("%,d", dto2.getSales9());
		product = String.format("%,d", dto2.getProduct9());
		profit = String.format("%,d", dto2.getSales9() - dto2.getProduct9()); 
		dto = new MontlyChartDto(sales, product, profit);
		tablelist.add(dto);
		
		sales = String.format("%,d", dto2.getSales10());
		product = String.format("%,d", dto2.getProduct10());
		profit = String.format("%,d", dto2.getSales10() - dto2.getProduct10()); 
		dto = new MontlyChartDto(sales, product, profit);
		tablelist.add(dto);
		
		sales = String.format("%,d", dto2.getSales11());
		product = String.format("%,d", dto2.getProduct11());
		profit = String.format("%,d", dto2.getSales11() - dto2.getProduct11()); 
		dto = new MontlyChartDto(sales, product, profit);
		tablelist.add(dto);
		
		sales = String.format("%,d", dto2.getSales12());
		product = String.format("%,d", dto2.getProduct12());
		profit = String.format("%,d", dto2.getSales12() - dto2.getProduct12()); 
		dto = new MontlyChartDto(sales, product, profit);
		tablelist.add(dto);
		
		return tablelist;
		
		
	}
	
	
	public static MontlyChartDto3 payment(List<MoneyDto> list) {
		
		int sCard = 0;		// 매출 카드
		int sCash = 0;		// 매출 현금
		int sCount = 0;		// 매출 개수
		
		int pCard = 0;		// 매입 카드
		int pCash = 0;		// 매입 현금
		int pCount = 0;		// 매입 개수

		
		// 퍼센트
		double dsCard = 0;	// 매출 카드  
		double dsCash = 0;	// 매출 현금	
		
		double dpCard = 0;	// 매입 카드
		double dpCash = 0;	// 매입 현금	
		
		
		
		for(int i = 0 ; i < list.size() ; i++) {
			MoneyDto dto = list.get(i);
			
			if(dto.getM_type().equals("매출")) {
				
					if(dto.getPayment().equals("카드")) {
						sCard++;
					}else if(dto.getPayment().equals("현금")) {
						sCash++;				
					}	
					
					sCount++;
			}
			else if(dto.getM_type().equals("매입")) {
				
					if(dto.getPayment().equals("카드")) {
						pCard++;
					}else if(dto.getPayment().equals("현금")) {
						pCash++;				
					}	
					pCount++;
			}
		}

		dsCard = ((double)sCard/sCount)*100;
		dsCash = ((double)sCash/sCount)*100;
		
		dpCard = ((double)pCard/pCount)*100;
		dpCash = ((double)pCash/pCount)*100;

		MontlyChartDto3 payment = new MontlyChartDto3(sCard, sCash, pCard, pCash);
		return payment;

	}

	public static List<MoneyDto> removeOverlap(List<MoneyDto> RealList) {
		
		
		
		for(int i = 0 ; i < RealList.size() ; i++) {
			
			for(int j = i+1 ; j < RealList.size() ; j++) {
				
				if(RealList.get(i).getP_name().equals(RealList.get(j).getP_name())) {
					int total = RealList.get(j).getPrice_total();
					RealList.get(i).setPrice_total(total);
					RealList.remove(j);					
				}
			}
		}
		
		return RealList;

	} 
	
	
	

	
	
}

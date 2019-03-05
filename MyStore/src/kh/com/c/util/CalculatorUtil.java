package kh.com.c.util;

import java.util.HashMap;

public class CalculatorUtil {

	// 카드수수료 인하 혜택 계산기 
	public static HashMap<String, String> cardBenefit(String sales,String percentage) {
	
		/* 
		 연 매출 5억이상 10억미만  = 수수료 2.05%에서 1.4%로 인하
		 연 매출 10억이상 30억미만  = 수수료 2.21%에서 1.6%로 인하 
		 연 매출 30억이상 500억미만  = 수수료 2.2%에서 2%로 인하  
		 */
		HashMap<String, String> answer = new HashMap<>();
		String result; // 결과(혜택 금액) _ 월 기준
		double comm = 0; // 기존 수수료
		double commNow = 0; // 현재 수수료;
		double card; //  카드 결제 금액  _ 년 기준
		String commAnswer;// 기존 수수료 기준 총액 _ 월 기준
		String commAnswerNow;// 현재 수수료 기준 총액 _ 월 기준
		long rSales; //  원단위로 바꾼 sales
		long ySales; // 연 매출
		// sales = 월 매출액 ,  percentage = 신용카드 결제 비중 
		
		rSales = Long.parseLong(sales) * 10000;
		
		ySales = rSales * 12 ;
		
		if(ySales >= 500000000 && ySales < 1000000000) {
			comm = 2.05;
			commNow = 1.4;
		}else if(ySales >= 1000000000 && ySales < 3000000000L) {
			comm = 2.21; 
			commNow = 1.6;	
			
		}else if(ySales >= 3000000000L && ySales < 50000000000L) {
			comm = 2.2;
			commNow = 2;				
		}else {
			answer.put("result", "0");
			answer.put("resultY", "0");
			
			return answer;
		}
			
			card = ((double)rSales *  Double.parseDouble(percentage)) / 100;
				
			commAnswer = String.format("%.0f", (card * comm ) / 100 ); 
			answer.put("commAnswer",commAnswer);
				 
			commAnswerNow = String.format("%.0f", (card * commNow ) / 100 ); 
			answer.put("commAnswerNow", commAnswerNow);
				
			result = String.format("%.0f",(Double.parseDouble(commAnswer) - Double.parseDouble(commAnswerNow)) ); 
			answer.put("result", result);
		
			answer.put("resultY", (Integer.parseInt(result)*12) + "");
			
		return answer;
	}
	
	
	// 일자리 안정자금 지원 혜택 계산기 
	public static HashMap<String, String> peopleBenefit(String peopleN,String peopleM) {
		/* 
		   종사자 5인 미만 사업장 = 월 평균 급여 210이하인 근로자 명당 15만원
		   종사자 5인 이상 30인 미만 사업장 = 월 평균 급여 210이하인 근로자 명당 13만원
		*/
		HashMap<String, String> answer = new HashMap<>();
		String result = ""; // 결과(혜택 금액)
		int bnf; // 인당 지원 금액
		// peopleN = 사업장 종사자 수, peopleM =  월 급여 175만원 이상 210만원 이하인 상용근로자 수 
		
		if(peopleN.equals("5인 미만")) {
			bnf = 15;
		}else if(peopleN.equals("5~10인 미만") || peopleN.equals("10~30인 미만")) {
			bnf = 13;
		}else {
			result = "0";
			answer.put("result", result);
			answer.put("resultY", "0");
			return answer;
		} 
		
		result = (Integer.parseInt(peopleM) * bnf) + "";
		
		answer.put("result", result);
		answer.put("resultY", (Integer.parseInt(result)*12) + "");
		
		return answer;
	}
	
	
		// 일자리 안정자금 지원 혜택 계산기 
		public static HashMap<String, String> rentBenefit(String sales,String rentM) {
			/* 
			 종합소득 금액이 4천만원 이하 = 월세의 12% 
			 종합소득 금액이 4천만원 초과 6천만원 이하  = 월세의 10% 
			 */
			HashMap<String, String> answer = new HashMap<>();
			String result; // 결과(혜택 금액)
			int bnf; // 공제 비율
			// sales = 종합소득금액  rentM = 월세
			
			if(sales.equals("4천만원 이하")) {
				bnf = 12;
			
			}else {
				bnf = 10;
			}
			
			result = String.format("%.0f", (Double.parseDouble(rentM) * bnf ) / 100 ); 
			
			answer.put("result", result);
			answer.put("resultY", (Integer.parseInt(result)*12) + "");
			
			return answer;
		}
		
		// 교육비 세액공제 혜택 계산기 
		public static HashMap<String, String> studyBenefit(String edu) {
			/* 
			 교육비의 15%를 세액공제  
			 */
			HashMap<String, String> answer = new HashMap<>();
			String result; // 결과(혜택 금액)
			
			result = String.format("%.0f",(Double.parseDouble(edu) * 15) / 100) ;
			 
			answer.put("resultY", result);		
			
			return answer;
		}
		
}

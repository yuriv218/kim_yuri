package kh.com.c.util;

import java.sql.Date;
import java.util.Calendar;

//<%=%>일때만 사용하고  JSTL과 함께 사용할 때는 static을 제거하고 get을 붙여
//useBean을 사용하자.
public class DateUtil {
	public static String toOne(String msg){
		return msg.charAt(0)=='0'?msg.charAt(1)+"":msg.trim();
	}
	//2012-08-07 문자열을 java.sql.Date로 바꾸기
	public static Date toDate(int year, int month, int day){
		String s = year + "-" + two(month+"") + "-" + two(day+"");
		Date d = Date.valueOf(s);
		return d;
	}
	public static String two(String msg){ 
		return msg.trim().length()<2?"0"+msg:msg.trim();
	}//
	public static String str(String msg){ //데크르라레이션에서 있던 메소드를 다 빼놨음
		return msg==null ?"":msg.trim();
	}//
	//완성하시오.
	public static String pollState(java.util.Date d){
		String s1="<div style='color:RED'>[종료]</div>";
		String s2="<div style='color:BLUE'>[진행중]</div>";
		return isEnd(d)?s1:s2;
	}
	//연월일만으로 대소 비교
	public static boolean isEnd(java.util.Date d){
		Calendar c=Calendar.getInstance();
		c.setTime(d);
		Calendar t=Calendar.getInstance();
		//오늘이 마지막날 보다 큰가?
		return Integer.parseInt(StringCal(t))>Integer.parseInt(StringCal(c));
	}
	//칼렌더를 20120807형식으로 만들기
	public static String StringCal(Calendar dd){
		String s=dd.get(Calendar.YEAR)+""+
		two((dd.get(Calendar.MONTH)+1)+"")+""+
		two(dd.get(Calendar.DATE)+"");
		return s;
	}
	
	// 오늘 날짜가 속한 주의 마지막 날(일요일)에 속하는 날짜 리턴하는 메소드.
	public String weekCalendar(String yyyymmdd) throws Exception{
		  
		  Calendar cal = Calendar.getInstance();
		  int toYear = 0;
		  int toMonth = 0;
		  int toDay = 0;
		
		  if(yyyymmdd == null || yyyymmdd.equals("")){   //파라메타값이 없을경우 오늘날짜
		   toYear = cal.get(cal.YEAR);  
		   toMonth = cal.get(cal.MONTH)+1;
		   toDay = cal.get(cal.DAY_OF_MONTH);
		   
		   int yoil = cal.get(cal.DAY_OF_WEEK); //요일나오게하기(숫자로)

		   if(yoil != 1){   //해당요일이 일요일이 아닌경우
		    yoil = yoil-2;
		   }else{           //해당요일이 일요일인경우
		    yoil = 7;
		   }
		   cal.set(toYear, toMonth-1, toDay-yoil);  //해당주월요일로 세팅
		
		  } else {
		   int yy =Integer.parseInt(yyyymmdd.substring(0, 4));
		   int mm =Integer.parseInt(yyyymmdd.substring(4, 6))-1;
		   int dd =Integer.parseInt(yyyymmdd.substring(6, 8));
		   cal.set(yy, mm,dd);
		  }
		  String[] arrYMD = new String[7];
		  
		  int inYear = cal.get(cal.YEAR);  
		  int inMonth = cal.get(cal.MONTH);
		  int inDay = cal.get(cal.DAY_OF_MONTH);
		  int yoil = cal.get(cal.DAY_OF_WEEK); //요일나오게하기(숫자로). 일요일=1 토요일=7?
		  if(yoil != 1){   //해당요일이 일요일이 아닌경우
		      yoil = yoil-2;
		   }else{           //해당요일이 일요일인경우
		      yoil = 7;
		   }
		  inDay = inDay-yoil;
		  for(int i = 0; i < 7;i++){
		   cal.set(inYear, inMonth, inDay+i);  //
		   String y = Integer.toString(cal.get(cal.YEAR));  
		   String m = Integer.toString(cal.get(cal.MONTH)+1);
		   String d = Integer.toString(cal.get(cal.DAY_OF_MONTH)+1);
		   if(m.length() == 1) m = "0" + m; 
		   if(d.length() == 1) d = "0" + d; 
		   
		   arrYMD[i] = y+"-"+m+"-"+d;
		   System.out.println("ymd ="+ y+m+d);
		   
		  }
		  
		  return arrYMD[6];
		 }

		
	public String lastdayOfMonth() {
		
		Calendar cal = Calendar.getInstance();
		String y = Integer.toString(cal.get(cal.YEAR));
		String m = Integer.toString(cal.get(cal.MONTH)+1); 
		String d = Integer.toString(cal.getActualMaximum(cal.DAY_OF_MONTH));
		
		if(m.length() == 1) m = "0" + m; 
		if(d.length() == 1) d = "0" + d; 
		   
		String ymd = y+"-"+m+"-"+d;
		return ymd;
		
	}
	
	public String lastdayOfYear() {
		
		Calendar cal = Calendar.getInstance();
		String y = Integer.toString(cal.get(cal.YEAR));
		String m = "12";
		String d = "31";
		
		String ymd = y+"-"+m+"-"+d;
		return ymd;
				
	}
}
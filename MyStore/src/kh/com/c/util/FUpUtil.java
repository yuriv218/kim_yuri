package kh.com.c.util;

import java.util.Date;

import kh.com.c.model.MemberDto;

public class FUpUtil {
	//f=abc.zip => f.indexOf('.') 3
	//f.substring(3) .zip
	//f.substring(0,3) abc
	// myfile.txt --> 12213123.txt  12213123.back 
	public static String getNewFile(String f){
		String filename="";
		String fpost="";
		//String fre="";
		if(f.indexOf('.')>=0){
			fpost=f.substring(f.indexOf('.'));
			//fre=f.substring(0,f.indexOf('.'));
			filename=new Date().getTime()+fpost;
		}else{
			filename=new Date().getTime()+".back";
		}
		return filename;
	} 
	public static String getNewFile2(String f){
		String filename="";
		String fpost="";
		String fre="";
		if(f.indexOf('.')>=0){
			fpost=f.substring(f.indexOf('.'));
			fre=f.substring(0,f.indexOf('.'));
			filename=fre+new Date().getTime()+fpost;
		}else{
			filename=f+new Date().getTime()+".back";
		}
		return filename;
	} 
	
	public static String getNewFile3(String f, MemberDto dto){
		String filename="";
		String fpost="";
		//String fre="";
		if(f.indexOf('.')>=0){
			fpost=f.substring(f.indexOf('.'));
			//fre=f.substring(0,f.indexOf('.'));
			filename=dto.getId()+fpost;
		}else{
			filename=dto.getId()+".back";
		}
		return filename;
	} 
	
	public static String getNewjpg(String f){
		String filename="";
		String fpost="";
		String fre="";
		if(f.indexOf('.')>=0){
			fpost=f.substring(f.indexOf('.'));
			fre=f.substring(0,f.indexOf('.'));
			filename=fre+fpost;
		}else{
			filename=f+".jpg";
		}
		return filename;
	} 
	
}

package kh.com.c.service;

import java.util.List;

import kh.com.c.model.MemberDto;

public interface MemberService {

 
	public boolean addmember(MemberDto mem) throws Exception;
	
	public MemberDto login(MemberDto mem) throws Exception;
	
	public MemberDto getMember(String id);

	public int getID(MemberDto mem);
	
	public MemberDto getInfo(int seq) throws Exception;
	
	public List<MemberDto> getMemberList();
	
	public 	List<MemberDto> getMypageList();
	
	public void mypageUpdate(MemberDto mem) throws Exception;
	public int idCheck(String id);

	public String serchImg(String id);
	
	public void updateMember(MemberDto mem);
	
	public void updatePassword(MemberDto mem)throws Exception;
	
	public 	void deleteMember(String id) throws Exception;
	
	public List<MemberDto> getAddress();
	
	public MemberDto getMapInfor(String address);
	
	public MemberDto IDgetMember(String id);
	
	public 	void checkMail(String id) throws Exception;
	
	
}

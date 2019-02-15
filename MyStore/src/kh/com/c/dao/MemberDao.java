package kh.com.c.dao;

import java.util.List;

import org.apache.ibatis.javassist.bytecode.annotation.MemberValueVisitor;

import kh.com.c.model.MemberDto;

public interface MemberDao {

	MemberDto login(MemberDto mem) throws Exception;
	
	int idCheck(String id);
	
	int getID(MemberDto mem);
	
	MemberDto getMember(String id);

	boolean addmember(MemberDto mem) throws Exception;
	 
	public MemberDto getInfo(int seq) throws Exception;
	
	void mypageUpdate(MemberDto mem) throws Exception;
	
	List<MemberDto> getMemberList();
	
	//마이페이지 가져오기
	List<MemberDto> getMypageList();
	
	public String serchImg(String id);
	
 
	
	public void updateMember(MemberDto mem);
	
	void updatePassword(MemberDto mem)throws Exception;

	void deleteMember(String id) throws Exception;
	
	//유리
	List<MemberDto> getAddress();
	
	MemberDto getMapInfor(String address);
	
	MemberDto IDgetMember(String id);
	
}

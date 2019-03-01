package kh.com.c.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.com.c.dao.MemberDao;
import kh.com.c.model.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	SqlSession sqlSession;
	
	String ns = "Member.";

	@Override
	public boolean addmember(MemberDto mem) throws Exception {
	int n = sqlSession.insert(ns + "addmember", mem);
		
		return n>0?true:false;
	}
	

	@Override
	public MemberDto login(MemberDto mem) throws Exception {		
		return sqlSession.selectOne(ns + "login", mem);
	}

	@Override
	public int getID(MemberDto mem) {		
		return sqlSession.selectOne(ns + "getID", mem);
	}


 


	@Override
	public MemberDto getInfo(int seq) throws Exception {
		return sqlSession.selectOne(ns+"getInfo", seq);
	}


	@Override
	public void mypageUpdate(MemberDto mem) throws Exception {
		sqlSession.update(ns+"updateMember", mem);
	}
	
	
	@Override
	public void updatePassword(MemberDto mem) throws Exception {
		sqlSession.update(ns+"updatePassword", mem);
		
	}




	@Override
	public List<MemberDto> getMemberList() {
		List<MemberDto> list = sqlSession.selectList(ns+"getMemberList");
		return list;
	}

 
 
	@Override
	public void updateMember(MemberDto mem) {
		sqlSession.update(ns+"updateMember",mem);
		
	}


	@Override
	public void deleteMember(String id) throws Exception {
		sqlSession.update(ns+"deleteMember", id);
		
	}


	@Override
	public List<MemberDto> getMypageList() {
		List<MemberDto> list = sqlSession.selectList(ns+"getMypageList");
		
		return list;
	}


	@Override
	public String serchImg(String id) {
	return sqlSession.selectOne(ns+"serchImg",id);
	}


	@Override
	public MemberDto getMember(String id) {
		return sqlSession.selectOne(ns+"getMember", id);
	}
 


	@Override
	public List<MemberDto> getAddress() {
		return sqlSession.selectList(ns+"getAddress");
	}


	@Override
	public MemberDto getMapInfor(String address) {
		return sqlSession.selectOne(ns+"getMapInfor",address);
	}


	@Override
	public MemberDto IDgetMember(String id) {

		return sqlSession.selectOne(ns+"IDgetMember",id);
	}
	
	@Override
	   public int idCheck(String id) {
	      return sqlSession.selectOne(ns+"idCheck", id);
	   }


	@Override
	public void checkMail(String id) throws Exception {
		sqlSession.update(ns+"checkMail", id);
		
	}
	 

 


	
}

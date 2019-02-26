package kh.com.c.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.com.c.dao.CommunityDao;

import kh.com.c.model.BbsParam;
import kh.com.c.model.ChatDto;
import kh.com.c.model.CommunityDto;


@Repository
public class CommunityDaoImpl implements CommunityDao {

	@Autowired
	SqlSession sqlSession;
	
	String ns = "Community.";

	@Override
	public List<CommunityDto> getCommunityList(String category) {
		List<CommunityDto> list = sqlSession.selectList(ns + "getCommunityList",category);		
		return list;
	}

	@Override
	public List<CommunityDto> getBestList(String category) {
		List<CommunityDto> list = sqlSession.selectList(ns + "getBestList",category);		
		return list;
	}

	@Override
	public CommunityDto getCommunity(int seq) {
		return sqlSession.selectOne(ns+"getCommunity", seq);
	}


	@Override
	public void uploadCommunity(CommunityDto dto) {
		sqlSession.insert(ns+"uploadCommunity", dto);
		
	}


	@Override
	public boolean replyCommunityUpdate(CommunityDto bbs) throws Exception {
		sqlSession.update(ns+"replyCommunityUpdate", bbs);
		return true;
	}

	@Override
	public boolean replyCommunityInsert(CommunityDto bbs) throws Exception {
		sqlSession.insert(ns+"replyCommunityInsert", bbs);
		return true;
	}

	@Override
	public void updateCommunity(CommunityDto bbs) {
		sqlSession.update(ns+"updateCommunity",bbs);
		
	}

	@Override
	public void deleteCommunity(int seq) throws Exception {
		System.out.println("시?"+seq);
		sqlSession.update(ns+"Communitydelete", seq);
		
	}

	@Override
	public void readCountCommunity(int seq) {
		
		sqlSession.update(ns+"readcountCommunity",seq);
	}

	@Override
	public List<CommunityDto> getBbsPagingList(BbsParam param) {
		List<CommunityDto> list = sqlSession.selectList(ns + "getBbsPagingList", param);		
		return list;
	}

	@Override
	public int getBbsSearch(BbsParam param) {
		return sqlSession.selectOne(ns + "getBbsSearch", param);

	}

	@Override
	public void downcountCommunity(int seq) {
		sqlSession.update(ns+"downcountCommunity",seq);
		
	}

	@Override
	public List<ChatDto> receiveM(String id) {
		
		List<ChatDto> list = sqlSession.selectList(ns+"receiveM",id);
		
		return list;
	}

	@Override
	public ChatDto Mdetail(int seq) {
		ChatDto dto = sqlSession.selectOne(ns+"Mdetail",seq);
		
		return dto;
	}

	@Override
	public void sendM(ChatDto dto) {
		
		sqlSession.insert(ns+"sendM",dto);
		
	}


	

}

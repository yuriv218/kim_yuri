package kh.com.c.dao;

import java.util.List;

import kh.com.c.model.BbsParam;
import kh.com.c.model.ChatDto;
import kh.com.c.model.CommunityDto;

public interface CommunityDao {

	List<CommunityDto> getCommunityList(String category);
	
	List<CommunityDto> getBestList(String category);

	public CommunityDto getCommunity(int seq);

	void uploadCommunity(CommunityDto dto);

	boolean replyCommunityUpdate(CommunityDto bbs) throws Exception;

	boolean replyCommunityInsert(CommunityDto bbs) throws Exception;

	void updateCommunity(CommunityDto bbs);

	void deleteCommunity(int seq) throws Exception;

	void readCountCommunity(int seq);

	List<CommunityDto> getBbsPagingList(BbsParam param);

	int getBbsSearch(BbsParam param);
	
	void downcountCommunity(int seq);

	List<ChatDto> receiveM(String id);

	public ChatDto Mdetail(int seq);

	void sendM(ChatDto dto);

}

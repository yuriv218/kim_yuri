package kh.com.c.service;

import java.util.List;

import kh.com.c.model.BbsParam;
import kh.com.c.model.ChatDto;
import kh.com.c.model.CommunityDto;

public interface CommunityService {

	public List<CommunityDto> getCommunityList(String category);
	
	public CommunityDto getCommunity(int seq);
	
	public void uploadCommunity(CommunityDto dto) ;
	
	public void reply(CommunityDto bbs) throws Exception;
	
	public void updateCommunity(CommunityDto bbs);
	
	public void deleteCommunity(int seq) throws Exception;
	
	public void readCountCommunity(int seq);
	
	public List<CommunityDto> getBbsPagingList(BbsParam param);
	
	public int getBbsSearch(BbsParam param);
	
	public void downcountCommunity(int seq);

	public List<ChatDto> receiveM(String id);
	
	public ChatDto Mdetail(int seq);
	
	public void sendM(ChatDto dto);

}
